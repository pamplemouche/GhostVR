.class public Lcom/facebook/gk/store/GatekeeperStoreUserManager;
.super Ljava/lang/Object;
.source "GatekeeperStoreUserManager.java"


# instance fields
.field private final mGatekeeperStoreConfig:Lcom/facebook/gk/store/GatekeeperStoreConfig;

.field private final mTopDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/facebook/gk/store/GatekeeperStoreConfig;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/facebook/gk/store/GatekeeperStoreUserManager;->mGatekeeperStoreConfig:Lcom/facebook/gk/store/GatekeeperStoreConfig;

    .line 24
    iput-object p2, p0, Lcom/facebook/gk/store/GatekeeperStoreUserManager;->mTopDirectory:Ljava/io/File;

    .line 25
    return-void
.end method
