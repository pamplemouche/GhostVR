.class public LDU0;
.super LkW;
.source "PG"


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:LmU0;

.field public final synthetic c:Lorg/chromium/components/signin/AccountTrackerService;


# direct methods
.method public constructor <init>(Lorg/chromium/components/signin/AccountTrackerService;Ljava/util/List;LmU0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LDU0;->c:Lorg/chromium/components/signin/AccountTrackerService;

    iput-object p2, p0, LDU0;->a:Ljava/util/List;

    iput-object p3, p0, LDU0;->b:LmU0;

    invoke-direct {p0}, LkW;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, LDU0;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v2, v4, v5

    const/4 v2, 0x0

    aput v3, v4, v2

    const-class v3, Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/String;

    const/4 v4, 0x0

    .line 3
    :goto_0
    iget-object v6, p0, LDU0;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 4
    aget-object v6, v3, v2

    iget-object v7, p0, LDU0;->b:LmU0;

    iget-object v8, p0, LDU0;->a:Ljava/util/List;

    .line 5
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/accounts/Account;

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, LmU0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 6
    aget-object v6, v3, v5

    iget-object v7, p0, LDU0;->a:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-string v0, "Signin.AndroidGetAccountIdsTime"

    .line 8
    invoke-static {v0, v4, v5}, LfV;->c(Ljava/lang/String;J)V

    return-object v3
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, [[Ljava/lang/String;

    .line 2
    iget-object v0, p0, LDU0;->c:Lorg/chromium/components/signin/AccountTrackerService;

    .line 3
    iget-boolean v1, v0, Lorg/chromium/components/signin/AccountTrackerService;->d:Z

    if-eqz v1, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    iget-boolean v1, v0, Lorg/chromium/components/signin/AccountTrackerService;->c:Z

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lorg/chromium/components/signin/AccountTrackerService;->c()V

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 6
    aget-object v1, p1, v0

    .line 7
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_3

    aget-object v5, v1, v3

    if-nez v5, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_4

    .line 8
    iget-object v1, p0, LDU0;->c:Lorg/chromium/components/signin/AccountTrackerService;

    .line 9
    iget-wide v1, v1, Lorg/chromium/components/signin/AccountTrackerService;->a:J

    .line 10
    aget-object v0, p1, v0

    aget-object p1, p1, v4

    .line 11
    invoke-static {v1, v2, v0, p1}, LJ/N;->Mu2KU$HY(J[Ljava/lang/String;[Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, LDU0;->c:Lorg/chromium/components/signin/AccountTrackerService;

    const/4 v0, 0x2

    .line 13
    iput v0, p1, Lorg/chromium/components/signin/AccountTrackerService;->b:I

    .line 14
    invoke-virtual {p1}, Lorg/chromium/components/signin/AccountTrackerService;->b()V

    goto :goto_2

    :cond_4
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "AccountService"

    const-string v1, "Invalid mapping of id/email"

    .line 15
    invoke-static {v0, v1, p1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object p1, p0, LDU0;->c:Lorg/chromium/components/signin/AccountTrackerService;

    .line 17
    invoke-virtual {p1}, Lorg/chromium/components/signin/AccountTrackerService;->c()V

    :goto_2
    return-void
.end method
