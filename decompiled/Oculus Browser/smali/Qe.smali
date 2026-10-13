.class public LQe;
.super Ll4;
.source "PG"


# instance fields
.field public final synthetic a:Ljava/lang/ref/WeakReference;

.field public final synthetic b:LRe;


# direct methods
.method public constructor <init>(LRe;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, LQe;->b:LRe;

    iput-object p2, p0, LQe;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ll4;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Typeface;)V
    .locals 3

    .line 1
    iget-object v0, p0, LQe;->b:LRe;

    iget-object v1, p0, LQe;->a:Ljava/lang/ref/WeakReference;

    .line 2
    iget-boolean v2, v0, LRe;->k:Z

    if-eqz v2, :cond_0

    .line 3
    iput-object p1, v0, LRe;->j:Landroid/graphics/Typeface;

    .line 4
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 5
    iget v0, v0, LRe;->i:I

    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    return-void
.end method
