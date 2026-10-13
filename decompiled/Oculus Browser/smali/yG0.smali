.class public LyG0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic w:LCG0;


# direct methods
.method public constructor <init>(LCG0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LyG0;->w:LCG0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, LyG0;->w:LCG0;

    invoke-static {p1}, LCG0;->a(LCG0;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
