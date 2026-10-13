.class public LDG0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic w:LKG0;


# direct methods
.method public constructor <init>(LKG0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LDG0;->w:LKG0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, LDG0;->w:LKG0;

    invoke-static {p1}, LKG0;->a(LKG0;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
