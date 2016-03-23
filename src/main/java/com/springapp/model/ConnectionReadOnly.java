/*
package com.springapp.model;

import org.hibernate.jdbc.Work;

import java.sql.Connection;
import java.sql.SQLException;



import org.hibernate.jdbc.Work;

import java.sql.Connection;
import java.sql.SQLException;

*/
/**
 * Created by IntelliJ IDEA. User: aconstantinescu Date: 11/29/12 Time: 2:30 PM To change this template use File |
 * Settings | File Templates.
 *//*

public class ConnectionReadOnly implements Work {
    Connection intercepted = null;
    boolean switchBack = false;
    boolean readOnlyStatus = false;
    boolean autoCommitStatus = false;

    @Override
    public void execute(Connection connection) throws SQLException {
        if (switchBack) {
            connection.setReadOnly(readOnlyStatus);
            connection.setAutoCommit(autoCommitStatus);
        } else {
            readOnlyStatus = connection.isReadOnly();
            autoCommitStatus = connection.getAutoCommit();
            connection.setReadOnly(true);
            connection.setAutoCommit(true);
        }
    }

    public void switchBack() {
        switchBack = true;
    }

}
*/
