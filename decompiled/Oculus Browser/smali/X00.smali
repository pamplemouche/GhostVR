.class public final synthetic LX00;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:La10;


# direct methods
.method public constructor <init>(La10;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX00;->w:La10;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LX00;->w:La10;

    const/4 v1, 0x0

    .line 1
    iput-object v1, v0, La10;->B:Landroid/widget/PopupWindow;

    return-void
.end method
