.class public final synthetic Lm70;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final w:Lr70;


# direct methods
.method public constructor <init>(Lr70;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm70;->w:Lr70;

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lm70;->w:Lr70;

    .line 1
    iget-object p1, p1, Lr70;->c:Lq70;

    const-string v0, ""

    invoke-interface {p1, v0}, Lq70;->a(Ljava/lang/String;)V

    return-void
.end method
