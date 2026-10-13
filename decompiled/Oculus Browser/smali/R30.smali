.class public LR30;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic w:LS30;


# direct methods
.method public constructor <init>(LS30;)V
    .locals 0

    .line 1
    iput-object p1, p0, LR30;->w:LS30;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object p1, p0, LR30;->w:LS30;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1, v0}, LS30;->a(ILjava/util/List;I)V

    return-void
.end method
