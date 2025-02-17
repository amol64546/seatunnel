--
-- Licensed to the Apache Software Foundation (ASF) under one or more
-- contributor license agreements.  See the NOTICE file distributed with
-- this work for additional information regarding copyright ownership.
-- The ASF licenses this file to You under the Apache License, Version 2.0
-- (the "License"); you may not use this file except in compliance with
-- the License.  You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--

-- ----------------------------------------------------------------------------------------------------------------
-- DATABASE:  mongodb_cdc
-- ----------------------------------------------------------------------------------------------------------------
CREATE DATABASE IF NOT EXISTS `mongodb_cdc`;

use mongodb_cdc;

-- Create and populate our products using a single insert with many rows
CREATE TABLE products (
  _id VARCHAR(512) NOT NULL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description VARCHAR(512),
  weight VARCHAR(255)
);

CREATE TABLE orders (
  _id VARCHAR(512) NOT NULL PRIMARY KEY,
  order_number INT NOT NULL,
  order_date VARCHAR(20) NOT NULL,
  quantity INT NOT NULL,
  product_id VARCHAR(512) NOT NULL
);
