.class public Lcom/facebook/gk/storelogger/TraceGatekeeperStoreLogger;
.super Ljava/lang/Object;
.source "TraceGatekeeperStoreLogger.java"

# interfaces
.implements Lcom/facebook/gk/store/GatekeeperStoreLogger;


# instance fields
.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/facebook/gk/storelogger/TraceGatekeeperStoreLogger;->mTag:Ljava/lang/String;

    .line 17
    return-void
.end method
