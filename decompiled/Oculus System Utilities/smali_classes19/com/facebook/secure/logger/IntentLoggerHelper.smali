.class public final Lcom/facebook/secure/logger/IntentLoggerHelper;
.super Ljava/lang/Object;
.source "IntentLoggerHelper.java"


# static fields
.field public static final DO_NOTHING:Lcom/facebook/secure/logger/IntentLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/facebook/secure/logger/IntentLoggerHelper$1;

    invoke-direct {v0}, Lcom/facebook/secure/logger/IntentLoggerHelper$1;-><init>()V

    sput-object v0, Lcom/facebook/secure/logger/IntentLoggerHelper;->DO_NOTHING:Lcom/facebook/secure/logger/IntentLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
