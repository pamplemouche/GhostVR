.class public Ltd1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# instance fields
.field public final synthetic w:Lorg/chromium/ui/gfx/ViewConfigurationHelper;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/gfx/ViewConfigurationHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltd1;->w:Lorg/chromium/ui/gfx/ViewConfigurationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ltd1;->w:Lorg/chromium/ui/gfx/ViewConfigurationHelper;

    invoke-static {p1}, Lorg/chromium/ui/gfx/ViewConfigurationHelper;->a(Lorg/chromium/ui/gfx/ViewConfigurationHelper;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method
