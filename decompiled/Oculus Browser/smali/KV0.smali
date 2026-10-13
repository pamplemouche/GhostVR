.class public LKV0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field public A:LLV;

.field public final w:Ljava/util/Set;

.field public final x:I

.field public final y:Ljava/lang/Iterable;

.field public final z:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LKV0;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Iterable;Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LL6;

    invoke-direct {v0}, LL6;-><init>()V

    iput-object v0, p0, LKV0;->w:Ljava/util/Set;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "cr_BindingManager"

    const-string v2, "Moderate binding enabled: maxSize=%d"

    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iput p1, p0, LKV0;->x:I

    .line 5
    iput-object p2, p0, LKV0;->y:Ljava/lang/Iterable;

    .line 6
    new-instance p1, LJV0;

    invoke-direct {p1, p0}, LJV0;-><init>(LKV0;)V

    iput-object p1, p0, LKV0;->z:Ljava/lang/Runnable;

    .line 7
    invoke-virtual {p3, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public static synthetic a(LKV0;)V
    .locals 1

    .line 5
    iget-object v0, p0, LKV0;->w:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0, v0}, LKV0;->a(I)V

    return-void
.end method

.method public static synthetic a(LKV0;F)V
    .locals 4

    .line 1
    iget-object v0, p0, LKV0;->w:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    int-to-float v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float v2, v2, v1

    float-to-int p1, v2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "cr_BindingManager"

    const-string v3, "Reduce connections from %d to %d"

    invoke-static {v2, v3, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sub-int/2addr v0, p1

    .line 3
    invoke-virtual {p0, v0}, LKV0;->a(I)V

    .line 4
    invoke-virtual {p0}, LKV0;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 12
    iget-object v0, p0, LKV0;->y:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LLV;

    .line 15
    iget-object v1, p0, LKV0;->A:LLV;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    if-eqz v1, :cond_2

    .line 16
    invoke-virtual {v1}, LLV;->a()V

    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, LKV0;->A:LLV;

    .line 18
    :cond_2
    iget-object v1, p0, LKV0;->w:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 19
    :cond_3
    invoke-virtual {v0}, LLV;->k()V

    .line 20
    iput-object v0, p0, LKV0;->A:LLV;

    return-void
.end method

.method public final a(I)V
    .locals 4

    .line 6
    iget-object v0, p0, LKV0;->y:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LLV;

    .line 7
    iget-object v3, p0, LKV0;->w:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    iget-object v3, p0, LKV0;->A:LLV;

    if-ne v2, v3, :cond_1

    const/4 v3, 0x0

    .line 9
    iput-object v3, p0, LKV0;->A:LLV;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v2}, LLV;->k()V

    .line 11
    :goto_0
    iget-object v3, p0, LKV0;->w:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    if-ne v1, p1, :cond_0

    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .line 1
    new-instance v0, LIV0;

    invoke-direct {v0, p0}, LIV0;-><init>(LKV0;)V

    .line 2
    sget-object v1, Lorg/chromium/content/browser/LauncherThread;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 1
    new-instance v0, LHV0;

    invoke-direct {v0, p0, p1}, LHV0;-><init>(LKV0;I)V

    .line 2
    sget-object p1, Lorg/chromium/content/browser/LauncherThread;->c:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
