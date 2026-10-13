.class public Lcom/facebook/support/v4/net/ConnectivityManagerCompat;
.super Ljava/lang/Object;
.source "ConnectivityManagerCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNetworkInfoFromBroadcast(Landroid/net/ConnectivityManager;Landroid/content/Intent;)Landroid/net/NetworkInfo;
    .locals 1
    .param p1, "cm"    # Landroid/net/ConnectivityManager;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 15
    invoke-static {p1, p2}, Landroid/support/v4/net/ConnectivityManagerCompat;->getNetworkInfoFromBroadcast(Landroid/net/ConnectivityManager;Landroid/content/Intent;)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
    .locals 1
    .param p1, "cm"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 19
    invoke-static {p1}, Landroid/support/v4/net/ConnectivityManagerCompat;->isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z

    move-result v0

    return v0
.end method
