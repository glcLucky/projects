CREATE TABLE stocks_info
( 
  date                  DATE  NOT NULL ,
  sec_id                CHAR(20)  NOT NULL ,
  sec_name              CHAR(20)  NOT NULL ,
  industry_sw           CHAR(20) ,
  traded_days           INT  ,
  is_trade              INT  ,
  is_st                 INT  ,
  is_hs300              INT  ,
  is_sz50               INT  ,
  is_zz500              INT  ,
  PRIMARY KEY (date, sec_id)
) ENGINE=InnoDB;


CREATE TABLE time_series_variables
(
  date         DATE  NOT NULL ,
  sec_id       CHAR(50)  NOT NULL ,
  close        DOUBLE    ,
  open         DOUBLE    ,
  high         DOUBLE    ,
  low          DOUBLE    ,
  volume       DOUBLE    ,
  amount       DOUBLE    ,
  stock_total_shares    BIGINT  ,
  stock_float_shares    BIGINT  ,
  PRIMARY KEY (date, sec_id)
) ENGINE=InnoDB;

CREATE TABLE report_variables
(
  date_report                   DATE  NOT NULL ,
  date_published                DATE  NOT NULL ,
  sec_id                        CHAR(50)  NOT NULL ,
  current_asset                         DOUBLE ,
  fixed_asset                         DOUBLE ,
  intangible_asset                          DOUBLE ,
  asset                         DOUBLE ,
  current_liab                          DOUBLE ,
  long_term_liab                          DOUBLE ,
  equity                          DOUBLE ,
  sum_of_equity_and_liab                          DOUBLE ,
  revenue_from_total_operating                          DOUBLE ,
  revenue_from_operating                          DOUBLE ,
  cost_from_total_operating                         DOUBLE ,
  cost_from_operating                         DOUBLE ,
  business_tariff_and_annex                         DOUBLE ,
  income_from_main_operating                          DOUBLE ,
  operating_expense                         DOUBLE ,
  administrative_cost                         DOUBLE ,
  financial_cost                          DOUBLE ,
  loss_from_asset_devaluation                         DOUBLE ,
  income_from_investment                          DOUBLE ,
  income_from_operating                         DOUBLE ,
  income_before_tax                         DOUBLE ,
  net_income                          DOUBLE ,
  net_income_to_owners                          DOUBLE ,
  basic_eps                         DOUBLE ,
  diluted_eps                         DOUBLE ,
  inflow_cash_from_sales                          DOUBLE ,
  inflow_cash_from_operating                          DOUBLE ,
  outflow_cash_from_buy                         DOUBLE ,
  outflow_cash_from_operating                         DOUBLE ,
  net_cash_inflow_from_operating                          DOUBLE ,
  inflow_cash_from_investment                         DOUBLE ,
  outflow_cash_from_investment                          DOUBLE ,
  net_cash_inflow_from_investment                         DOUBLE ,
  inflow_cash_from_funding                          DOUBLE ,
  outflow_cash_from_funding                         DOUBLE ,
  net_cash_inflow_from_funding                          DOUBLE ,
  流动比率                         DOUBLE ,
  速动比率                         DOUBLE ,
  超速动比率                         DOUBLE ,
  资产负债率                         DOUBLE ,
  利息保障倍数                         DOUBLE ,
  长期债务与营运资金比率                         DOUBLE ,

  营业收入增长率                         DOUBLE ,
  主营利润增长率                         DOUBLE ,
  营业利润增长率                         DOUBLE ,
  利润总额增长率                         DOUBLE ,
  净利润增长率                         DOUBLE ,
  营业费用增长率                         DOUBLE ,
  管理费用增长率                         DOUBLE ,
  财务费用增长率                         DOUBLE ,
  三项费用增长率                         DOUBLE ,
  总资产增长率                         DOUBLE ,
  净资产增长率                         DOUBLE ,

  存货周转率                         DOUBLE ,
  存货周转天数                         DOUBLE ,
  应收账款周转率                         DOUBLE ,
  应收账款周转天数                         DOUBLE ,
  流动资产周转率                         DOUBLE ,
  流动资产周转天数                         DOUBLE ,
  固定资产周转率                         DOUBLE ,
  固定资产周转天数                         DOUBLE ,
  总资产周转率                         DOUBLE ,
  总资产周转天数                         DOUBLE ,
  股东权益周转率                         DOUBLE ,
  股东权益周转天数                         DOUBLE ,

  每股收益                          DOUBLE ,
  每股净资产                         DOUBLE ,
  每股经营活动现金流量净额                         DOUBLE ,
  每股现金净流量                         DOUBLE ,
  每股息税前利润                         DOUBLE ,
  每股公积金                         DOUBLE ,
  每股未分配利润                         DOUBLE ,
  每股负债                         DOUBLE ,
  净资产收益率                         DOUBLE ,


  销售现金比率                         DOUBLE ,
  现金营业收入比率                         DOUBLE ,
  现金净利润比率                         DOUBLE ,
  现金总资产比率                         DOUBLE ,
  现金流动负债比率                         DOUBLE ,
  现金到期债务比率                         DOUBLE ,
  现金总负债比率                         DOUBLE ,

  销售净利率                         DOUBLE ,
  销售毛利率                         DOUBLE ,
  销售税金率                         DOUBLE ,
  总资产净利率                         DOUBLE ,
  主营业务利润率                          DOUBLE ,
  营业利润率                          DOUBLE ,
  净利润率                          DOUBLE ,
  营业成本比例                          DOUBLE ,
  营业费用比例                          DOUBLE ,
  管理费用比例                          DOUBLE ,
  财务费用比例                          DOUBLE ,
  三项费用比例                          DOUBLE ,


  产权比率                          DOUBLE ,
  股东权益比率                          DOUBLE ,
  股东权益与固定资产比率                          DOUBLE ,
  固定资产与股东权益比率                          DOUBLE ,
  长期负债比例                          DOUBLE ,
  固定资产比例                          DOUBLE ,
  流动负债比                          DOUBLE ,
  流动负债率                          DOUBLE ,
  流动资产比例                          DOUBLE ,
  权益负债比率                          DOUBLE ,
  PRIMARY KEY (date_report, sec_id)
) ENGINE=InnoDB;

-- CREATE TABLE report_indicators
-- (
--   date         DATE  NOT NULL ,
--   sec_id       CHAR(50)  NOT NULL ,
--   流动比率                         DOUBLE ,
--   速动比率                         DOUBLE ,
--   超速动比率                         DOUBLE ,
--   资产负债率                         DOUBLE ,
--   利息保障倍数                         DOUBLE ,
--   长期债务与营运资金比率                         DOUBLE ,

--   营业收入增长率                         DOUBLE ,
--   主营利润增长率                         DOUBLE ,
--   营业利润增长率                         DOUBLE ,
--   利润总额增长率                         DOUBLE ,
--   净利润增长率                         DOUBLE ,
--   营业费用增长率                         DOUBLE ,
--   管理费用增长率                         DOUBLE ,
--   财务费用增长率                         DOUBLE ,
--   三项费用增长率                         DOUBLE ,
--   总资产增长率                         DOUBLE ,
--   净资产增长率                         DOUBLE ,

--   存货周转率                         DOUBLE ,
--   存货周转天数                         DOUBLE ,
--   应收账款周转率                         DOUBLE ,
--   应收账款周转天数                         DOUBLE ,
--   流动资产周转率                         DOUBLE ,
--   流动资产周转天数                         DOUBLE ,
--   固定资产周转率                         DOUBLE ,
--   固定资产周转天数                         DOUBLE ,
--   总资产周转率                         DOUBLE ,
--   总资产周转天数                         DOUBLE ,
--   股东权益周转率                         DOUBLE ,
--   股东权益周转天数                         DOUBLE ,

--   每股收益                          DOUBLE ,
--   每股净资产                         DOUBLE ,
--   每股经营活动现金流量净额                         DOUBLE ,
--   每股现金净流量                         DOUBLE ,
--   每股息税前利润                         DOUBLE ,
--   每股公积金                         DOUBLE ,
--   每股未分配利润                         DOUBLE ,
--   每股负债                         DOUBLE ,
--   净资产收益率                         DOUBLE ,


--   销售现金比率                         DOUBLE ,
--   现金营业收入比率                         DOUBLE ,
--   现金净利润比率                         DOUBLE ,
--   现金总资产比率                         DOUBLE ,
--   现金流动负债比率                         DOUBLE ,
--   现金到期债务比率                         DOUBLE ,
--   现金总负债比率                         DOUBLE ,

--   销售净利率                         DOUBLE ,
--   销售毛利率                         DOUBLE ,
--   销售税金率                         DOUBLE ,
--   总资产净利率                         DOUBLE ,
--   主营业务利润率                          DOUBLE ,
--   营业利润率                          DOUBLE ,
--   净利润率                          DOUBLE ,
--   营业成本比例                          DOUBLE ,
--   营业费用比例                          DOUBLE ,
--   管理费用比例                          DOUBLE ,
--   财务费用比例                          DOUBLE ,
--   三项费用比例                          DOUBLE ,


--   产权比率                          DOUBLE ,
--   股东权益比率                          DOUBLE ,
--   股东权益与固定资产比率                          DOUBLE ,
--   固定资产与股东权益比率                          DOUBLE ,
--   长期负债比例                          DOUBLE ,
--   固定资产比例                          DOUBLE ,
--   流动负债比                          DOUBLE ,
--   流动负债率                          DOUBLE ,
--   流动资产比例                          DOUBLE ,
--   权益负债比率                          DOUBLE ,
--   PRIMARY KEY (date, sec_id)
-- ) ENGINE=InnoDB;