--- Amazon, Adobe, Google

--- Initial Solution

SELECT 
    product_id
FROM 
    Products
WHERE 
    low_fats='Y' AND
    recyclable='Y';


--- Pandas Solution 
"""
import pandas as pd

def find_products(products: pd.DataFrame) -> pd.DataFrame:
    df = products[(products['low_fats']=='Y') & (products['recyclable']=='Y')]
    df = df[['product_id']]
    return df

"""


