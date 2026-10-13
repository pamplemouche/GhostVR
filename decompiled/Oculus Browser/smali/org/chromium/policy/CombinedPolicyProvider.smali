.class public Lorg/chromium/policy/CombinedPolicyProvider;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static f:Lorg/chromium/policy/CombinedPolicyProvider;


# instance fields
.field public a:J

.field public b:Lorg/chromium/policy/PolicyConverter;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/policy/CombinedPolicyProvider;->c:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/policy/CombinedPolicyProvider;->d:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/policy/CombinedPolicyProvider;->e:Ljava/util/List;

    return-void
.end method

.method public static a()Lorg/chromium/policy/CombinedPolicyProvider;
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/policy/CombinedPolicyProvider;->f:Lorg/chromium/policy/CombinedPolicyProvider;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/chromium/policy/CombinedPolicyProvider;

    invoke-direct {v0}, Lorg/chromium/policy/CombinedPolicyProvider;-><init>()V

    sput-object v0, Lorg/chromium/policy/CombinedPolicyProvider;->f:Lorg/chromium/policy/CombinedPolicyProvider;

    .line 3
    :cond_0
    sget-object v0, Lorg/chromium/policy/CombinedPolicyProvider;->f:Lorg/chromium/policy/CombinedPolicyProvider;

    return-object v0
.end method

.method public static linkNative(JLorg/chromium/policy/PolicyConverter;)Lorg/chromium/policy/CombinedPolicyProvider;
    .locals 3

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    invoke-static {}, Lorg/chromium/policy/CombinedPolicyProvider;->a()Lorg/chromium/policy/CombinedPolicyProvider;

    move-result-object v0

    .line 3
    iput-wide p0, v0, Lorg/chromium/policy/CombinedPolicyProvider;->a:J

    .line 4
    iput-object p2, v0, Lorg/chromium/policy/CombinedPolicyProvider;->b:Lorg/chromium/policy/PolicyConverter;

    const-wide/16 v1, 0x0

    cmp-long p2, p0, v1

    if-eqz p2, :cond_0

    .line 5
    iget-object p0, v0, Lorg/chromium/policy/CombinedPolicyProvider;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LL91;

    .line 6
    invoke-virtual {p1}, LL91;->a()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lorg/chromium/policy/CombinedPolicyProvider;->a()Lorg/chromium/policy/CombinedPolicyProvider;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public refreshPolicies()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lorg/chromium/policy/CombinedPolicyProvider;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lorg/chromium/policy/CombinedPolicyProvider;->d:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/chromium/policy/CombinedPolicyProvider;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL91;

    .line 4
    invoke-virtual {v1}, LL91;->a()V

    goto :goto_1

    :cond_1
    return-void
.end method
