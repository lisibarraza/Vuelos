using {AGENCY_SALES, AGENCY, CUSTOMER, CUSTOMER_PURCHASE, AGENCY_SALES_YEAR, DATES_BOOK} from '../db/schema';

service AgencyService {
   
    ///Functions
    function getAgencySales(
                AGENCY_NUM : String(8),
                Date_From : Date,
                Date_To : Date
        ) returns many AGENCY_SALES;

    
    function getAgency(
                AGENCY_NUM : String(8)
    ) returns many AGENCY;

    function getCustomer(
                CUST_ID : String(8)
    ) returns many CUSTOMER;

    function getCustomerPurchase(
                CUST_ID : String(8),
                Date_From : Date,
                Date_To : Date
        ) returns many CUSTOMER_PURCHASE;

    function getAgencySalesYear() returns many AGENCY_SALES_YEAR;

    function getDatesRptSales() returns many DATES_BOOK;

    ///SPROCS
    //SProc to Fil the Agency Sales based on Date From, To Date To
    action fillAgencySales( V_DATE_FROM: String,  V_DATE_TO: String);

};
