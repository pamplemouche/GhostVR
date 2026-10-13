.class public final LTo;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Landroid/accounts/Account;

.field public b:LL6;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:LIu;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LTo;->c:I

    sget-object v0, LIu;->i:LIu;

    iput-object v0, p0, LTo;->f:LIu;

    return-void
.end method


# virtual methods
.method public final a()LVo;
    .locals 10

    new-instance v9, LVo;

    iget-object v1, p0, LTo;->a:Landroid/accounts/Account;

    iget-object v2, p0, LTo;->b:LL6;

    iget v4, p0, LTo;->c:I

    iget-object v6, p0, LTo;->d:Ljava/lang/String;

    iget-object v7, p0, LTo;->e:Ljava/lang/String;

    iget-object v8, p0, LTo;->f:LIu;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, LVo;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;LIu;)V

    return-object v9
.end method
