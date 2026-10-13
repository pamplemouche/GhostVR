.class final Lcom/oculus/systemutilities/BaseService$1;
.super Ljava/lang/Object;
.source "BaseService.java"

# interfaces
.implements Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/systemutilities/BaseService;->registerLibraryChangeListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-static {p1}, Lcom/oculus/modules/LibraryModuleImpl;->notifyLibraryChanged(Ljava/lang/String;)V

    .line 99
    return-void
.end method
