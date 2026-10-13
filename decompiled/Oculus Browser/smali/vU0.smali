.class public LvU0;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field public final synthetic a:Lorg/chromium/components/signin/AccountManagerFacade;


# direct methods
.method public constructor <init>(Lorg/chromium/components/signin/AccountManagerFacade;)V
    .locals 0

    .line 1
    iput-object p1, p0, LvU0;->a:Lorg/chromium/components/signin/AccountManagerFacade;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, LvU0;->a:Lorg/chromium/components/signin/AccountManagerFacade;

    invoke-static {p1}, Lorg/chromium/components/signin/AccountManagerFacade;->b(Lorg/chromium/components/signin/AccountManagerFacade;)V

    return-void
.end method
