.class public LnN0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic w:LoN0;


# direct methods
.method public constructor <init>(LoN0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LnN0;->w:LoN0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1
    sget-object v0, LoN0;->G:Ljava/util/Set;

    .line 2
    iget-object v1, p0, LnN0;->w:LoN0;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
