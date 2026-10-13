.class public LG8;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Landroid/view/View;

.field public final synthetic x:Landroid/view/View;

.field public final synthetic y:LN8;


# direct methods
.method public constructor <init>(LN8;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, LG8;->y:LN8;

    iput-object p2, p0, LG8;->w:Landroid/view/View;

    iput-object p3, p0, LG8;->x:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, LG8;->y:LN8;

    iget-object v0, v0, LN8;->g:Landroid/widget/ListView;

    iget-object v1, p0, LG8;->w:Landroid/view/View;

    iget-object v2, p0, LG8;->x:Landroid/view/View;

    invoke-static {v0, v1, v2}, LN8;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
