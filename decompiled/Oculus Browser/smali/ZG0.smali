.class public LZG0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic w:Z

.field public final synthetic x:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(LaH0;ZLjava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-boolean p2, p0, LZG0;->w:Z

    iput-object p3, p0, LZG0;->x:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, LZG0;->w:Z

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, LaH0;->a(ZI)V

    .line 3
    iget-object p1, p0, LZG0;->x:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
