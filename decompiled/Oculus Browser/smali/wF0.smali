.class public LwF0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/accounts/Account;

.field public final b:LvF0;

.field public c:Z

.field public d:Lorg/chromium/components/signin/identitymanager/CoreAccountInfo;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;LvF0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LwF0;->a:Landroid/accounts/Account;

    .line 3
    iput-object p2, p0, LwF0;->b:LvF0;

    return-void
.end method
