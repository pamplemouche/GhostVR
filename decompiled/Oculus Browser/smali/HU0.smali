.class public final synthetic LHU0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/components/signin/ChildAccountInfoFetcher;


# direct methods
.method public constructor <init>(Lorg/chromium/components/signin/ChildAccountInfoFetcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LHU0;->a:Lorg/chromium/components/signin/ChildAccountInfoFetcher;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LHU0;->a:Lorg/chromium/components/signin/ChildAccountInfoFetcher;

    check-cast p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, LJU0;->a(I)Z

    move-result p1

    .line 2
    iget-object v1, v0, Lorg/chromium/components/signin/ChildAccountInfoFetcher;->c:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 4
    iget-wide v1, v0, Lorg/chromium/components/signin/ChildAccountInfoFetcher;->a:J

    iget-object v0, v0, Lorg/chromium/components/signin/ChildAccountInfoFetcher;->b:Ljava/lang/String;

    .line 5
    invoke-static {v1, v2, v0, p1}, LJ/N;->MBZpZMbr(JLjava/lang/String;Z)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 6
    throw p1
.end method
