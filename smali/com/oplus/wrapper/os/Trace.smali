.class public Lcom/oplus/wrapper/os/Trace;
.super Ljava/lang/Object;
.source "Trace.java"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist asyncTraceBegin(JLjava/lang/String;I)V
    .locals 0
    .param p0, "traceTag"    # J
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "cookie"    # I

    .line 68
    invoke-static {p0, p1, p2, p3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 69
    return-void
.end method

.method public static whitelist asyncTraceEnd(JLjava/lang/String;I)V
    .locals 0
    .param p0, "traceTag"    # J
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "cookie"    # I

    .line 83
    invoke-static {p0, p1, p2, p3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 84
    return-void
.end method

.method public static whitelist traceBegin(JLjava/lang/String;)V
    .locals 0
    .param p0, "traceTag"    # J
    .param p2, "methodName"    # Ljava/lang/String;

    .line 39
    invoke-static {p0, p1, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 40
    return-void
.end method

.method public static whitelist traceEnd(J)V
    .locals 0
    .param p0, "traceTag"    # J

    .line 51
    invoke-static {p0, p1}, Landroid/os/Trace;->traceEnd(J)V

    .line 52
    return-void
.end method
