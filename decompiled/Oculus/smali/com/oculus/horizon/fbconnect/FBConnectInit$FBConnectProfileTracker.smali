.class Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectProfileTracker;
.super Lcom/facebook/ProfileTracker;
.source "FBConnectInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/fbconnect/FBConnectInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FBConnectProfileTracker"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/facebook/ProfileTracker;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectProfileTracker;->mContext:Landroid/content/Context;

    .line 118
    return-void
.end method


# virtual methods
.method protected onCurrentProfileChanged(Lcom/facebook/Profile;Lcom/facebook/Profile;)V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/oculus/horizon/fbconnect/FBConnectInit$FBConnectProfileTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/fbconnect/contract/FBConnectContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 123
    return-void
.end method
