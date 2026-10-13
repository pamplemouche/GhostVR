.class public LT9;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic w:Lba;


# direct methods
.method public constructor <init>(Lba;)V
    .locals 0

    .line 1
    iput-object p1, p0, LT9;->w:Lba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, LT9;->w:Lba;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
