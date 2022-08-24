/*import 'dart:convert';
import 'package:app_escola_bites/app_config.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';

MapSD jsomTest = {
  "saldo": [
    {
      @RequestMapping("/getCaixa")
      public String getCaixa(@RequestParam string email, @RequestParam string senha) {
    long now = Instant.now().toEpochMilli();

    databaseConfiguration = new DatabaseConfiguration(username, password, url);
    JdbcTemplate jdbcTemplate = new JdbcTemplate();
    JsonObject object = new JsonObject();
    jdbcTemplate.setDataSource(databaseConfiguration.dataSource());
    System.out.print("Get Caixa .");
    jdbcTemplate.query("SELECT CDCAIXA" +
                        " FROM FIN_CAIXA" +
                       " WHERE EMAIL = '" + EMAIL + "'" +
                         " AND SENHA = '" + SENHA + "'"
            (rs) -> {
                object.addProperty("CDCAIXA", rs.getString("CDXAIXA"));
            });

    System.out.print(".");

    try {
        jdbcTemplate.getDataSource().getConnection().close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    System.out.println(".");
    System.out.println("Tempo : " + (Instant.now().toEpochMilli() - now));

    return object.toString();
}

@RequestMapping("/getSaldoBanco")
public String getSaldoBanco() {
    long now = Instant.now().toEpochMilli();

    databaseConfiguration = new DatabaseConfiguration(username, password, url);
    jdbcTemplate = new JdbcTemplate();
    JsonArray jsonArray = new JsonArray();
    jdbcTemplate.setDataSource(databaseConfiguration.dataSource());
    System.out.print("Get SaldoBanco .");
    jdbcTemplate.query("SELECT TO_CHAR(DTBCO,'DD/MM/YYYY') DTBCO, VLRSLDFIM" +
                        " FROM FIN_SLDCTABCO" +
                       " WHERE CDCTABANCARIA = 1" +
                         " AND DTBCO = (SELECT MAX(DTBCO) FROM FIN_SLDCTABCO WHERE CDCTABANCARIA = 1)"
            , (rs) -> {
                JsonObject object = new JsonObject();
                object.addProperty("DATA", rs.getString("DTBCO"));
                object.addProperty("SALDO", rs.getString("VLRSLDFIM"));
            });

    System.out.print(".");

    try {
        jdbcTemplate.getDataSource().getConnection().close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    System.out.println(".");
    System.out.println("Tempo : " + (Instant.now().toEpochMilli() - now));

    JsonObject o = new JsonObject();
    o.add("produtos", jsonArray);
    return o.toString();
}

@RequestMapping("/getSaldoCaixa")
public String getSaldoCaixa(@RequestParam int CDCAIXA) {
    long now = Instant.now().toEpochMilli();

    databaseConfiguration = new DatabaseConfiguration(username, password, url);
    JdbcTemplate jdbcTemplate = new JdbcTemplate();
    JsonObject object = new JsonObject();
    jdbcTemplate.setDataSource(databaseConfiguration.dataSource());
    System.out.print("Get Caixa .");
    jdbcTemplate.query("SELECT TO_CHAR(DTCAIXA,'DD/MM/YYYY') DTCAIXA, VLRSLDFIM" +
            " FROM FIN_SLDCAIXA" +
            " WHERE CDCAIXA = " + CDCAIXA +
            " AND DTCAIXA = (SELECT MAX(DTCAIXA) FROM FIN_SLDCAIXA WHERE CDCAIXA = " + CDCAIXA + ")"
    (rs) -> {
        object.addProperty("DATA", rs.getString("DTCAIXA"));
        object.addProperty("SALDO", rs.getString("VLRSLDFIM"));
    });

    System.out.print(".");

    try {
        jdbcTemplate.getDataSource().getConnection().close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    System.out.println(".");
    System.out.println("Tempo : " + (Instant.now().toEpochMilli() - now));

    return object.toString();
}

@RequestMapping("/getMovBanco")
public String getMovBanco() {
    long now = Instant.now().toEpochMilli();

    databaseConfiguration = new DatabaseConfiguration(username, password, url);
    jdbcTemplate = new JdbcTemplate();
    JsonArray jsonArray = new JsonArray();
    jdbcTemplate.setDataSource(databaseConfiguration.dataSource());
    System.out.print("Get MovBanco .");
    jdbcTemplate.query("SELECT DTBCO, TO_CHAR(DTBCO,'DD/MM/YYYY') DATA, NOOPERACAO, VLRMOVBCO, TIPO" +
                    " FROM VW_MOVCTABCO" +
                    " WHERE CDCTABANCARIA = 1" +
                    " ORDER BY 1 DESC"
            , (rs) -> {
                JsonObject object = new JsonObject();
                object.addProperty("DATA", rs.getString("DATA"));
                object.addProperty("OPERACAO", rs.getString("NOOPERACAO"));
                object.addProperty("VALOR", rs.getString("VLRMOVBCO"));
                object.addProperty("TIPO", rs.getString("TIPO"));
                jsonArray.add(object);
            });

    System.out.print(".");

    try {
        jdbcTemplate.getDataSource().getConnection().close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    System.out.println(".");
    System.out.println("Tempo : " + (Instant.now().toEpochMilli() - now));

    JsonObject o = new JsonObject();
    o.add("produtos", jsonArray);
    return o.toString();
}

@RequestMapping("/getMovCaixa")
public String getMovCaixa(@RequestParam int CDCAIXA) {
    long now = Instant.now().toEpochMilli();

    databaseConfiguration = new DatabaseConfiguration(username, password, url);
    JdbcTemplate jdbcTemplate = new JdbcTemplate();
    JsonObject object = new JsonObject();
    jdbcTemplate.setDataSource(databaseConfiguration.dataSource());
    System.out.print("Get MovCaixa .");
    jdbcTemplate.query("SELECT DTCAIXA, TO_CHAR(DTCAIXA,'DD/MM/YYYY') DATA, NOOPERACAO, VLRMOVCAIXA, TIPO" +
            " FROM VW_MOVCAIXA" +
            " WHERE CDCAIXA = " + CDCAIXA +
            " ORDER BY 1 DESC"
    (rs) -> {
        object.addProperty("DATA", rs.getString("DATA"));
        object.addProperty("OPERACAO", rs.getString("NOOPERACAO"));
        object.addProperty("VALOR", rs.getString("VLRMOVCAIXA"));
        object.addProperty("TIPO", rs.getString("TIPO"));
        jsonArray.add(object);
    });

    System.out.print(".");

    try {
        jdbcTemplate.getDataSource().getConnection().close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    System.out.println(".");
    System.out.println("Tempo : " + (Instant.now().toEpochMilli() - now));

    return object.toString();
}

@RequestMapping("/getMetaCaixa")
public String getMetaCaixa(@RequestParam int CDCAIXA) {
    long now = Instant.now().toEpochMilli();

    databaseConfiguration = new DatabaseConfiguration(username, password, url);
    JdbcTemplate jdbcTemplate = new JdbcTemplate();
    JsonObject object = new JsonObject();
    jdbcTemplate.setDataSource(databaseConfiguration.dataSource());
    System.out.print("Get MetaCaixa .");
    jdbcTemplate.query("SELECT SUM(VLRMENSALIDADE) VLRMENSALIDADE, SUM(VLRRIFA) VLRRIFA" +
                        " FROM (SELECT NVL(SUM(VLRMOVCAIXA),0) VLRMENSALIDADE, 0 VLRRIFA" +
                                " FROM FIN_MOVCAIXA" +
                               " WHERE CDCAIXA = " + CDCAIXA +
                                 " AND CDTIPORECEITA = 1" +
                                " UNION ALL " +
                              " SELECT NVL(SUM(VLRMOVCAIXA),0) VLRMENSALIDADE, 0 VLRRIFA" +
                                " FROM FIN_MOVCAIXA" +
                               " WHERE CDCAIXA = " + CDCAIXA +
                                 " AND CDTIPORECEITA = 2)"
    (rs) -> {
        object.addProperty("MENSALIUDADE", rs.getString("VLRMENSALIDADE"));
        object.addProperty("RIFA", rs.getString("VLRRIFA"));
    });

    System.out.print(".");

    try {
        jdbcTemplate.getDataSource().getConnection().close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    System.out.println(".");
    System.out.println("Tempo : " + (Instant.now().toEpochMilli() - now));

    return object.toString();

    }
    },
  ]
};*/
