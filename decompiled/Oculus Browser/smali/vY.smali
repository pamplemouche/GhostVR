.class public final synthetic LvY;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/ChromeActivity;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LvY;->a:Lorg/chromium/chrome/browser/ChromeActivity;

    return-void
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .locals 0

    iget-object p1, p0, LvY;->a:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->g1()V

    return-void
.end method
