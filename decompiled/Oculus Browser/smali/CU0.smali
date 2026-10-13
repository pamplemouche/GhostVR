.class public final synthetic LCU0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/components/signin/AccountTrackerService;


# direct methods
.method public constructor <init>(Lorg/chromium/components/signin/AccountTrackerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LCU0;->a:Lorg/chromium/components/signin/AccountTrackerService;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, LCU0;->a:Lorg/chromium/components/signin/AccountTrackerService;

    check-cast p1, Ljava/util/List;

    .line 1
    iget-boolean v1, v0, Lorg/chromium/components/signin/AccountTrackerService;->c:Z

    if-nez v1, :cond_2

    iget v1, v0, Lorg/chromium/components/signin/AccountTrackerService;->b:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-wide v2, v0, Lorg/chromium/components/signin/AccountTrackerService;->a:J

    .line 6
    invoke-static {v2, v3, v1}, LJ/N;->MVRs2cAt(J[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    .line 7
    iput p1, v0, Lorg/chromium/components/signin/AccountTrackerService;->b:I

    .line 8
    invoke-virtual {v0}, Lorg/chromium/components/signin/AccountTrackerService;->b()V

    :cond_2
    :goto_1
    return-void
.end method
