.class public LK8;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public A:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/LayoutInflater;

.field public c:I

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:I

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/view/View;

.field public h:Ljava/lang/CharSequence;

.field public i:Ljava/lang/CharSequence;

.field public j:Landroid/content/DialogInterface$OnClickListener;

.field public k:Ljava/lang/CharSequence;

.field public l:Landroid/content/DialogInterface$OnClickListener;

.field public m:Z

.field public n:Landroid/content/DialogInterface$OnCancelListener;

.field public o:Landroid/content/DialogInterface$OnDismissListener;

.field public p:Landroid/content/DialogInterface$OnKeyListener;

.field public q:[Ljava/lang/CharSequence;

.field public r:Landroid/widget/ListAdapter;

.field public s:Landroid/content/DialogInterface$OnClickListener;

.field public t:I

.field public u:Landroid/view/View;

.field public v:Z

.field public w:[Z

.field public x:Z

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LK8;->c:I

    .line 3
    iput v0, p0, LK8;->e:I

    .line 4
    iput-boolean v0, p0, LK8;->v:Z

    const/4 v0, -0x1

    .line 5
    iput v0, p0, LK8;->z:I

    .line 6
    iput-object p1, p0, LK8;->a:Landroid/content/Context;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, LK8;->m:Z

    const-string v0, "layout_inflater"

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, LK8;->b:Landroid/view/LayoutInflater;

    return-void
.end method
