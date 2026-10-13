.class public Lh81;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Li81;


# direct methods
.method public constructor <init>(Li81;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh81;->b:Li81;

    iput-object p2, p0, Lh81;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lh81;->a:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    iget-object p1, p0, Lh81;->b:Li81;

    .line 3
    iget-object p2, p1, Li81;->a:Lj81;

    .line 4
    iget-object v0, p2, Lj81;->b:Landroid/accounts/AccountManager;

    iget-object v1, p2, Lj81;->e:Landroid/accounts/Account;

    .line 5
    iget-object v2, p2, Lj81;->d:Ljava/lang/String;

    iget-object v3, p2, Lj81;->c:Landroid/os/Bundle;

    const/4 v4, 0x1

    new-instance v5, Li81;

    iget-object p1, p1, Li81;->b:Lorg/chromium/net/HttpNegotiateAuthenticator;

    .line 6
    invoke-direct {v5, p1, p2}, Li81;-><init>(Lorg/chromium/net/HttpNegotiateAuthenticator;Lj81;)V

    const/4 v6, 0x0

    .line 7
    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method
