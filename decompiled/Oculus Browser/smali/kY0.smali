.class public LkY0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic w:LnY0;


# direct methods
.method public constructor <init>(LnY0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LkY0;->w:LnY0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, LkY0;->w:LnY0;

    const/4 p2, 0x1

    new-array p4, p2, [I

    const/4 p5, 0x0

    aput p3, p4, p5

    .line 2
    iget-boolean p3, p1, LnY0;->c:Z

    if-eqz p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p3, p1, LnY0;->a:Lorg/chromium/content/browser/input/SelectPopup;

    invoke-virtual {p3, p4}, Lorg/chromium/content/browser/input/SelectPopup;->a([I)V

    .line 4
    iput-boolean p2, p1, LnY0;->c:Z

    .line 5
    :goto_0
    iget-object p1, p0, LkY0;->w:LnY0;

    invoke-virtual {p1, p5}, LnY0;->a(Z)V

    return-void
.end method
