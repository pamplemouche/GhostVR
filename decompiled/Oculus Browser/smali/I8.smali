.class public LI8;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic w:LN8;

.field public final synthetic x:LK8;


# direct methods
.method public constructor <init>(LK8;LN8;)V
    .locals 0

    .line 1
    iput-object p1, p0, LI8;->x:LK8;

    iput-object p2, p0, LI8;->w:LN8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, LI8;->x:LK8;

    iget-object p1, p1, LK8;->s:Landroid/content/DialogInterface$OnClickListener;

    iget-object p2, p0, LI8;->w:LN8;

    iget-object p2, p2, LN8;->b:Lm9;

    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 2
    iget-object p1, p0, LI8;->x:LK8;

    iget-boolean p1, p1, LK8;->y:Z

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, LI8;->w:LN8;

    iget-object p1, p1, LN8;->b:Lm9;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
