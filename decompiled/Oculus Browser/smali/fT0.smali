.class public LfT0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic w:LiT0;


# direct methods
.method public constructor <init>(LiT0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LfT0;->w:LiT0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, LfT0;->w:LiT0;

    .line 2
    iget p2, p1, LiT0;->B:I

    .line 3
    iget-object p1, p1, LiT0;->A:LlT0;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, LlT0;->a(I)V

    :cond_0
    return-void
.end method
