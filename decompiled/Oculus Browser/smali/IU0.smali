.class public LIU0;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field public final synthetic a:Lorg/chromium/components/signin/ChildAccountInfoFetcher;


# direct methods
.method public constructor <init>(Lorg/chromium/components/signin/ChildAccountInfoFetcher;)V
    .locals 0

    .line 1
    iput-object p1, p0, LIU0;->a:Lorg/chromium/components/signin/ChildAccountInfoFetcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    const-string p1, "account"

    .line 2
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/accounts/Account;

    .line 3
    iget-object p2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 4
    iget-object p2, p0, LIU0;->a:Lorg/chromium/components/signin/ChildAccountInfoFetcher;

    .line 5
    iget-object p2, p2, Lorg/chromium/components/signin/ChildAccountInfoFetcher;->c:Landroid/accounts/Account;

    .line 6
    invoke-virtual {p2, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object p1, p0, LIU0;->a:Lorg/chromium/components/signin/ChildAccountInfoFetcher;

    .line 8
    invoke-virtual {p1}, Lorg/chromium/components/signin/ChildAccountInfoFetcher;->a()V

    return-void
.end method
