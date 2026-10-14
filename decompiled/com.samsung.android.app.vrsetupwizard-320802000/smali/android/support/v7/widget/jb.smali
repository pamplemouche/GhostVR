.class Landroid/support/v7/widget/jb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/SeslProgressBar;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/SeslProgressBar;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/jb;->a:Landroid/support/v7/widget/SeslProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/SeslProgressBar;Landroid/support/v7/widget/ix;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/jb;-><init>(Landroid/support/v7/widget/SeslProgressBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, Landroid/support/v7/widget/jb;->a:Landroid/support/v7/widget/SeslProgressBar;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/support/v7/widget/jb;->a:Landroid/support/v7/widget/SeslProgressBar;

    invoke-static {v1}, Landroid/support/v7/widget/SeslProgressBar;->a(Landroid/support/v7/widget/SeslProgressBar;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Landroid/support/v7/widget/jb;->a:Landroid/support/v7/widget/SeslProgressBar;

    invoke-static {v4}, Landroid/support/v7/widget/SeslProgressBar;->a(Landroid/support/v7/widget/SeslProgressBar;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/ja;

    iget-object v5, p0, Landroid/support/v7/widget/jb;->a:Landroid/support/v7/widget/SeslProgressBar;

    iget v6, v4, Landroid/support/v7/widget/ja;->a:I

    iget v7, v4, Landroid/support/v7/widget/ja;->b:I

    iget-boolean v8, v4, Landroid/support/v7/widget/ja;->c:Z

    const/4 v9, 0x1

    iget-boolean v10, v4, Landroid/support/v7/widget/ja;->d:Z

    invoke-static/range {v5 .. v10}, Landroid/support/v7/widget/SeslProgressBar;->a(Landroid/support/v7/widget/SeslProgressBar;IIZZZ)V

    invoke-virtual {v4}, Landroid/support/v7/widget/ja;->a()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/jb;->a:Landroid/support/v7/widget/SeslProgressBar;

    invoke-static {v1}, Landroid/support/v7/widget/SeslProgressBar;->a(Landroid/support/v7/widget/SeslProgressBar;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroid/support/v7/widget/jb;->a:Landroid/support/v7/widget/SeslProgressBar;

    invoke-static {v1, v2}, Landroid/support/v7/widget/SeslProgressBar;->a(Landroid/support/v7/widget/SeslProgressBar;Z)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
