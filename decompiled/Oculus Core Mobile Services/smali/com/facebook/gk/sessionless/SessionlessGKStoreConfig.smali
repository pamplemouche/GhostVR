.class public Lcom/facebook/gk/sessionless/SessionlessGKStoreConfig;
.super Ljava/lang/Object;
.source "SessionlessGKStoreConfig.java"

# interfaces
.implements Lcom/facebook/gk/store/GatekeeperStoreConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNumberOfGatekeepers()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/facebook/gk/sessionless/SessionlessGKMeta;->count:I

    return v0
.end method
