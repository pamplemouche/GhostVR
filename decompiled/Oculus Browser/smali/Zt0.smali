.class public final synthetic LZt0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final w:Leu0;


# direct methods
.method public constructor <init>(Leu0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZt0;->w:Leu0;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, LZt0;->w:Leu0;

    .line 1
    iget-object p2, p1, Leu0;->I:Landroid/os/Handler;

    new-instance v0, Lbu0;

    const-string v1, "User closed the Payment Request UI."

    invoke-direct {v0, p1, v1}, Lbu0;-><init>(Leu0;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
