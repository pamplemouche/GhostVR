.class public final synthetic LXY0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:LYY0;

.field public final b:Landroid/view/inputmethod/EditorInfo;


# direct methods
.method public constructor <init>(LYY0;Landroid/view/inputmethod/EditorInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LXY0;->a:LYY0;

    iput-object p2, p0, LXY0;->b:Landroid/view/inputmethod/EditorInfo;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, LXY0;->a:LYY0;

    iget-object v1, p0, LXY0;->b:Landroid/view/inputmethod/EditorInfo;

    .line 1
    iget-object v2, v0, LYY0;->C:LWY0;

    const/4 v3, 0x0

    .line 2
    iput-boolean v3, v2, LWY0;->g:Z

    .line 3
    iget-object v2, v0, LYY0;->x:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 4
    iget-object v0, v0, LYY0;->C:LWY0;

    const/4 v2, 0x1

    .line 5
    iput-boolean v2, v0, LWY0;->g:Z

    return-object v1
.end method
