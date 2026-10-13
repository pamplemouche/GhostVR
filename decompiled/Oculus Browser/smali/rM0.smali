.class public final synthetic LrM0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LrM0;->w:Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, LrM0;->w:Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;

    const/4 v1, 0x0

    .line 1
    iput-object v1, v0, Lorg/chromium/chrome/browser/ui/widget/ListMenuButton;->z:Lef1;

    return-void
.end method
