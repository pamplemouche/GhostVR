.class public Landroid/arch/lifecycle/k;
.super Landroid/arch/lifecycle/f;


# instance fields
.field private a:Landroid/arch/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/a/b/a<",
            "Landroid/arch/lifecycle/i;",
            "Landroid/arch/lifecycle/m;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/arch/lifecycle/h;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/arch/lifecycle/j;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/arch/lifecycle/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/arch/lifecycle/j;)V
    .locals 1

    invoke-direct {p0}, Landroid/arch/lifecycle/f;-><init>()V

    new-instance v0, Landroid/arch/a/b/a;

    invoke-direct {v0}, Landroid/arch/a/b/a;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/k;->a:Landroid/arch/a/b/a;

    const/4 v0, 0x0

    iput v0, p0, Landroid/arch/lifecycle/k;->d:I

    iput-boolean v0, p0, Landroid/arch/lifecycle/k;->e:Z

    iput-boolean v0, p0, Landroid/arch/lifecycle/k;->f:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/k;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/arch/lifecycle/k;->c:Ljava/lang/ref/WeakReference;

    sget-object p1, Landroid/arch/lifecycle/h;->b:Landroid/arch/lifecycle/h;

    iput-object p1, p0, Landroid/arch/lifecycle/k;->b:Landroid/arch/lifecycle/h;

    return-void
.end method

.method static a(Landroid/arch/lifecycle/h;Landroid/arch/lifecycle/h;)Landroid/arch/lifecycle/h;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/arch/lifecycle/h;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method private a(Landroid/arch/lifecycle/j;)V
    .locals 5

    iget-object v0, p0, Landroid/arch/lifecycle/k;->a:Landroid/arch/a/b/a;

    invoke-virtual {v0}, Landroid/arch/a/b/a;->c()Landroid/arch/a/b/g;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/arch/lifecycle/k;->f:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/m;

    :goto_0
    iget-object v3, v2, Landroid/arch/lifecycle/m;->a:Landroid/arch/lifecycle/h;

    iget-object v4, p0, Landroid/arch/lifecycle/k;->b:Landroid/arch/lifecycle/h;

    invoke-virtual {v3, v4}, Landroid/arch/lifecycle/h;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_0

    iget-boolean v3, p0, Landroid/arch/lifecycle/k;->f:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/arch/lifecycle/k;->a:Landroid/arch/a/b/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/arch/a/b/a;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/arch/lifecycle/m;->a:Landroid/arch/lifecycle/h;

    invoke-direct {p0, v3}, Landroid/arch/lifecycle/k;->c(Landroid/arch/lifecycle/h;)V

    iget-object v3, v2, Landroid/arch/lifecycle/m;->a:Landroid/arch/lifecycle/h;

    invoke-static {v3}, Landroid/arch/lifecycle/k;->e(Landroid/arch/lifecycle/h;)Landroid/arch/lifecycle/g;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/arch/lifecycle/m;->a(Landroid/arch/lifecycle/j;Landroid/arch/lifecycle/g;)V

    invoke-direct {p0}, Landroid/arch/lifecycle/k;->c()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static b(Landroid/arch/lifecycle/g;)Landroid/arch/lifecycle/h;
    .locals 3

    sget-object v0, Landroid/arch/lifecycle/l;->a:[I

    invoke-virtual {p0}, Landroid/arch/lifecycle/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Landroid/arch/lifecycle/h;->a:Landroid/arch/lifecycle/h;

    return-object p0

    :pswitch_1
    sget-object p0, Landroid/arch/lifecycle/h;->e:Landroid/arch/lifecycle/h;

    return-object p0

    :pswitch_2
    sget-object p0, Landroid/arch/lifecycle/h;->d:Landroid/arch/lifecycle/h;

    return-object p0

    :pswitch_3
    sget-object p0, Landroid/arch/lifecycle/h;->c:Landroid/arch/lifecycle/h;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Landroid/arch/lifecycle/h;)V
    .locals 1

    iget-object v0, p0, Landroid/arch/lifecycle/k;->b:Landroid/arch/lifecycle/h;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/arch/lifecycle/k;->b:Landroid/arch/lifecycle/h;

    iget-boolean p1, p0, Landroid/arch/lifecycle/k;->e:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget p1, p0, Landroid/arch/lifecycle/k;->d:I

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Landroid/arch/lifecycle/k;->e:Z

    invoke-direct {p0}, Landroid/arch/lifecycle/k;->d()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/arch/lifecycle/k;->e:Z

    return-void

    :cond_2
    :goto_0
    iput-boolean v0, p0, Landroid/arch/lifecycle/k;->f:Z

    return-void
.end method

.method private b(Landroid/arch/lifecycle/j;)V
    .locals 5

    iget-object v0, p0, Landroid/arch/lifecycle/k;->a:Landroid/arch/a/b/a;

    invoke-virtual {v0}, Landroid/arch/a/b/a;->b()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/arch/lifecycle/k;->f:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/m;

    :goto_0
    iget-object v3, v2, Landroid/arch/lifecycle/m;->a:Landroid/arch/lifecycle/h;

    iget-object v4, p0, Landroid/arch/lifecycle/k;->b:Landroid/arch/lifecycle/h;

    invoke-virtual {v3, v4}, Landroid/arch/lifecycle/h;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_0

    iget-boolean v3, p0, Landroid/arch/lifecycle/k;->f:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/arch/lifecycle/k;->a:Landroid/arch/a/b/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/arch/a/b/a;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/arch/lifecycle/m;->a:Landroid/arch/lifecycle/h;

    invoke-static {v3}, Landroid/arch/lifecycle/k;->d(Landroid/arch/lifecycle/h;)Landroid/arch/lifecycle/g;

    move-result-object v3

    invoke-static {v3}, Landroid/arch/lifecycle/k;->b(Landroid/arch/lifecycle/g;)Landroid/arch/lifecycle/h;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/arch/lifecycle/k;->c(Landroid/arch/lifecycle/h;)V

    invoke-virtual {v2, p1, v3}, Landroid/arch/lifecycle/m;->a(Landroid/arch/lifecycle/j;Landroid/arch/lifecycle/g;)V

    invoke-direct {p0}, Landroid/arch/lifecycle/k;->c()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b()Z
    .locals 3

    iget-object v0, p0, Landroid/arch/lifecycle/k;->a:Landroid/arch/a/b/a;

    invoke-virtual {v0}, Landroid/arch/a/b/a;->a()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/arch/lifecycle/k;->a:Landroid/arch/a/b/a;

    invoke-virtual {v0}, Landroid/arch/a/b/a;->d()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/m;

    iget-object v0, v0, Landroid/arch/lifecycle/m;->a:Landroid/arch/lifecycle/h;

    iget-object v2, p0, Landroid/arch/lifecycle/k;->a:Landroid/arch/a/b/a;

    invoke-virtual {v2}, Landroid/arch/a/b/a;->e()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/m;

    iget-object v2, v2, Landroid/arch/lifecycle/m;->a:Landroid/arch/lifecycle/h;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/arch/lifecycle/k;->b:Landroid/arch/lifecycle/h;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Landroid/arch/lifecycle/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private c(Landroid/arch/lifecycle/h;)V
    .locals 1

    iget-object v0, p0, Landroid/arch/lifecycle/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static d(Landroid/arch/lifecycle/h;)Landroid/arch/lifecycle/g;
    .locals 3

    sget-object v0, Landroid/arch/lifecycle/l;->b:[I

    invoke-virtual {p0}, Landroid/arch/lifecycle/h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Landroid/arch/lifecycle/g;->ON_PAUSE:Landroid/arch/lifecycle/g;

    return-object p0

    :cond_2
    sget-object p0, Landroid/arch/lifecycle/g;->ON_STOP:Landroid/arch/lifecycle/g;

    return-object p0

    :cond_3
    sget-object p0, Landroid/arch/lifecycle/g;->ON_DESTROY:Landroid/arch/lifecycle/g;

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Landroid/arch/lifecycle/k;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/j;

    if-nez v0, :cond_0

    const-string v0, "LifecycleRegistry"

    const-string v1, "LifecycleOwner is garbage collected, you shouldn\'t try dispatch new events from it."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/arch/lifecycle/k;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iput-boolean v2, p0, Landroid/arch/lifecycle/k;->f:Z

    iget-object v1, p0, Landroid/arch/lifecycle/k;->b:Landroid/arch/lifecycle/h;

    iget-object v2, p0, Landroid/arch/lifecycle/k;->a:Landroid/arch/a/b/a;

    invoke-virtual {v2}, Landroid/arch/a/b/a;->d()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/m;

    iget-object v2, v2, Landroid/arch/lifecycle/m;->a:Landroid/arch/lifecycle/h;

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/h;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_1

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/k;->b(Landroid/arch/lifecycle/j;)V

    :cond_1
    iget-object v1, p0, Landroid/arch/lifecycle/k;->a:Landroid/arch/a/b/a;

    invoke-virtual {v1}, Landroid/arch/a/b/a;->e()Ljava/util/Map$Entry;

    move-result-object v1

    iget-boolean v2, p0, Landroid/arch/lifecycle/k;->f:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/arch/lifecycle/k;->b:Landroid/arch/lifecycle/h;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/m;

    iget-object v1, v1, Landroid/arch/lifecycle/m;->a:Landroid/arch/lifecycle/h;

    invoke-virtual {v2, v1}, Landroid/arch/lifecycle/h;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/k;->a(Landroid/arch/lifecycle/j;)V

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Landroid/arch/lifecycle/k;->f:Z

    return-void
.end method

.method private static e(Landroid/arch/lifecycle/h;)Landroid/arch/lifecycle/g;
    .locals 3

    sget-object v0, Landroid/arch/lifecycle/l;->b:[I

    invoke-virtual {p0}, Landroid/arch/lifecycle/h;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    sget-object p0, Landroid/arch/lifecycle/g;->ON_RESUME:Landroid/arch/lifecycle/g;

    return-object p0

    :cond_3
    sget-object p0, Landroid/arch/lifecycle/g;->ON_START:Landroid/arch/lifecycle/g;

    return-object p0

    :cond_4
    :goto_0
    sget-object p0, Landroid/arch/lifecycle/g;->ON_CREATE:Landroid/arch/lifecycle/g;

    return-object p0
.end method


# virtual methods
.method public a()Landroid/arch/lifecycle/h;
    .locals 1

    iget-object v0, p0, Landroid/arch/lifecycle/k;->b:Landroid/arch/lifecycle/h;

    return-object v0
.end method

.method public a(Landroid/arch/lifecycle/g;)V
    .locals 0

    invoke-static {p1}, Landroid/arch/lifecycle/k;->b(Landroid/arch/lifecycle/g;)Landroid/arch/lifecycle/h;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/arch/lifecycle/k;->b(Landroid/arch/lifecycle/h;)V

    return-void
.end method

.method public a(Landroid/arch/lifecycle/h;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/arch/lifecycle/k;->b(Landroid/arch/lifecycle/h;)V

    return-void
.end method

.method public a(Landroid/arch/lifecycle/i;)V
    .locals 1

    iget-object v0, p0, Landroid/arch/lifecycle/k;->a:Landroid/arch/a/b/a;

    invoke-virtual {v0, p1}, Landroid/arch/a/b/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
