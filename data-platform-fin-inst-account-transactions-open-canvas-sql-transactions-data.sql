CREATE TABLE `data_platform_fin_inst_account_transactions_open_canvas_transactions_data`
(
  `FinInstCountry`                                  varchar(3) NOT NULL, 
  `FinInstCode`                                     varchar(10) NOT NULL,
  `FinInstBranchCode`                               varchar(10) NOT NULL,
  `FinInstFullCode`                                 varchar(15) NOT NULL,
  `InternalFinInstCustomerID`                       int(12) NOT NULL,
  `InternalFinInstAccountID`                        int(12) NOT NULL,
  `ValidityEndDate`                                 date NOT NULL,
  `ValidityStartDate`                               date NOT NULL,
  `item_number`                                     varchar(3) NOT NULL,
  `transaction_date`                                date NOT NULL,
  `value_date`                                      date NOT NULL,
  `withdrawal_amount`                               float(13) DEFAULT NULL,
  `checks_issued_by_other_banks_withdrawal_amount`  float(13) DEFAULT NULL,
  `deposit_amount`                                  float(13) DEFAULT NULL,
  `checks_issued_by_other_banks_deposit_amount`     float(13) DEFAULT NULL,
  `check_type`                                      varchar(20) DEFAULT NULL,
  `balance`                                         float(13) DEFAULT NULL,
  `transaction_type`                                varchar(20) DEFAULT NULL,
  `detail_division`                                 varchar(20) DEFAULT NULL,
  `bank_name`                                       varchar(15) DEFAULT NULL,
  `branch_name`                                     varchar(15) DEFAULT NULL,
  `abstract`                                        varchar(48) DEFAULT NULL,
  `customer_number_transfer_message`                varchar(20) DEFAULT NULL,
  `edi_key`                                         varchar(100) DEFAULT NULL,

  PRIMARY KEY (`FinInstCountry`, `FinInstCode`, `FinInstBranchCode`, `FinInstFullCode`, `InternalFinInstCustomerID`, `InternalFinInstAccountID`, `ValidityEndDate`, `ValidityStartDate`, `item_number`),

  CONSTRAINT `DataPlatformFinInstAccountTransactionsOpenCanvasTransactionsDataFinInstAccount_fk` FOREIGN KEY (`FinInstCountry`, `FinInstCode`, `FinInstBranchCode`, `FinInstFullCode`, `InternalFinInstCustomerID`, `InternalFinInstAccountID`) REFERENCES `data_platform_fin_inst_acccount_item_data` (`FinInstCountry`, `FinInstCode`, `FinInstBranchCode`, `FinInstFullCode`, `InternalFinInstCustomerID`, `InternalFinInstAccountID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
