import os
import openpyxl
import pyodbc
from dotenv import load_dotenv

load_dotenv(dotenv_path=".env.dev") 


def apply_rollback_sql(server, port, database, username, password, sql_file_path):
    conn = None
    cursor = None

      # Correctly build the server string
    if port and '\\' not in server:
        server_str = f"{server},{port}"  # Use comma only if NOT a named instance
    else:
        server_str = server  # Named instance or no port
        
    try:
        # Establish connection to the SQL Server database
        conn = pyodbc.connect(
            f'DRIVER={{ODBC Driver 17 for SQL Server}};'
            f'SERVER={server};'
            f'DATABASE={database};'
            f'UID={username};'
            f'PWD={password}'
        )
        cursor = conn.cursor()

        # Read rollback SQL script
        with open(sql_file_path, 'r', encoding='utf-8') as file:
            sql_script = file.read()

        # Split script into individual statements
        # SQL Server uses "GO" as batch separator, split by that
        commands = sql_script.split('GO')

        for command in commands:
            command = command.strip()
            if command:
                cursor.execute(command)
        
        # Commit the rollback transaction
        conn.commit()
        print("Rollback script applied successfully.")

    except Exception as e:
        print(f"An error occurred: {e}")

    finally:
        if cursor:
            cursor.close()
        if conn:
            conn.close()


if __name__ == "__main__":
    # Replace these parameters with your actual DB connection info and rollback file path
    server = os.getenv('DB_HOST')
    port = os.getenv('DB_PORT') 
    database = os.getenv('DB_NAME')
    username = os.getenv('DB_USER')
    password = os.getenv('DB_PASS')
    sql_file_path = os.getenv('SQL_FILE_PATH') 

    apply_rollback_sql(server, port, database, username, password, sql_file_path)