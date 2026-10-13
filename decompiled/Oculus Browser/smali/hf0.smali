.class public final synthetic Lhf0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lif0;


# direct methods
.method public constructor <init>(Lif0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhf0;->a:Lif0;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lhf0;->a:Lif0;

    check-cast p1, Landroid/view/View;

    .line 1
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/InfoBar;->d()V

    return-void
.end method
