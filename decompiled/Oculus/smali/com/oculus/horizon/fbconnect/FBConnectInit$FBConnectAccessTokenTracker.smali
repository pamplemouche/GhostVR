.class Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker;
.super Lcom/facebook/AccessTokenTracker;
.source "FBConnectInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/fbconnect/FBConnectInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FBConnectAccessTokenTracker"
.end annotation


# instance fields
.field private final mLinkedAccountsSQLiteHelper:Lcom/oculus/horizon/linkedaccounts/database/LinkedAccountsSQLiteHelper;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/linkedaccounts/database/LinkedAccountsSQLiteHelper;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/facebook/AccessTokenTracker;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker;->mLinkedAccountsSQLiteHelper:Lcom/oculus/horizon/linkedaccounts/database/LinkedAccountsSQLiteHelper;

    .line 79
    return-void
.end method

.method static synthetic access$300(Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker;)Lcom/oculus/horizon/linkedaccounts/database/LinkedAccountsSQLiteHelper;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker;->mLinkedAccountsSQLiteHelper:Lcom/oculus/horizon/linkedaccounts/database/LinkedAccountsSQLiteHelper;

    return-object v0
.end method


# virtual methods
.method protected onCurrentAccessTokenChanged(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
    .locals 1

    .prologue
    .line 84
    if-nez p2, :cond_0

    .line 85
    new-instance v0, Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker$1;-><init>(Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    .line 108
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-static {}, Lcom/facebook/Profile;->fetchProfileForCurrentAccessToken()V

    .line 97
    new-instance v0, Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker$2;

    invoke-direct {v0, p0, p2}, Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker$2;-><init>(Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectAccessTokenTracker;Lcom/facebook/AccessToken;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    goto :goto_0
.end method
