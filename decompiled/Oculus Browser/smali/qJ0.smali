.class public LqJ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, LqJ0;->w:Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, LqJ0;->w:Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;->a(Lorg/chromium/chrome/browser/tasks/tab_management/TabGridIphItemView;I)V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method
