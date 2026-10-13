.class Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;
.super Landroid/database/ContentObserver;
.source "OVRLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/libraryapi/OVRLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LibraryContentObserver"
.end annotation


# instance fields
.field final handler:Landroid/os/Handler;

.field final listener:Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;

.field final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;Landroid/os/Handler;)V
    .locals 0

    .line 86
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 87
    iput-object p1, p0, Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;->uri:Landroid/net/Uri;

    .line 88
    iput-object p2, p0, Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;->listener:Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;

    .line 89
    iput-object p3, p0, Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 94
    iget-object p1, p0, Lcom/oculus/libraryapi/OVRLibrary$LibraryContentObserver;->listener:Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;

    invoke-static {p2}, Lcom/oculus/library/provider/contract/LibraryProviderContract;->getPackageFromAppsUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;->onChange(Ljava/lang/String;)V

    return-void
.end method
