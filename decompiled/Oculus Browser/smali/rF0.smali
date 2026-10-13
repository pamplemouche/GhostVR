.class public final synthetic LrF0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/signin/SigninManager;

.field public final b:LvF0;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/signin/SigninManager;LvF0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LrF0;->a:Lorg/chromium/chrome/browser/signin/SigninManager;

    iput-object p2, p0, LrF0;->b:LvF0;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LrF0;->a:Lorg/chromium/chrome/browser/signin/SigninManager;

    iget-object v1, p0, LrF0;->b:LvF0;

    check-cast p1, Landroid/accounts/Account;

    .line 1
    invoke-virtual {v0, p1, v1}, Lorg/chromium/chrome/browser/signin/SigninManager;->a(Landroid/accounts/Account;LvF0;)V

    return-void
.end method
