.class public final synthetic Lau0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final w:Leu0;


# direct methods
.method public constructor <init>(Leu0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lau0;->w:Leu0;

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object p1, p0, Lau0;->w:Leu0;

    .line 1
    iget-object v0, p1, Leu0;->I:Landroid/os/Handler;

    new-instance v1, Lbu0;

    const-string v2, "User closed the Payment Request UI."

    invoke-direct {v1, p1, v2}, Lbu0;-><init>(Leu0;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
