.class Lcom/oculus/horizon/libraryui/SubLibraryAdapter$6;
.super Ljava/lang/Object;
.source "SubLibraryAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/libraryui/SubLibraryAdapter;->getAppsWithBadgedFirst(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/oculus/library/model/App;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/libraryui/SubLibraryAdapter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/libraryui/SubLibraryAdapter;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$6;->this$0:Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oculus/library/model/App;Lcom/oculus/library/model/App;)I
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$6;->this$0:Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

    iget-object v1, p1, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oculus/horizon/libraryui/SubLibraryAdapter;->access$700(Lcom/oculus/horizon/libraryui/SubLibraryAdapter;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$6;->this$0:Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

    iget-object v1, p2, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oculus/horizon/libraryui/SubLibraryAdapter;->access$700(Lcom/oculus/horizon/libraryui/SubLibraryAdapter;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    const/4 v0, -0x1

    .line 281
    :goto_0
    return v0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$6;->this$0:Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

    iget-object v1, p2, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oculus/horizon/libraryui/SubLibraryAdapter;->access$700(Lcom/oculus/horizon/libraryui/SubLibraryAdapter;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$6;->this$0:Lcom/oculus/horizon/libraryui/SubLibraryAdapter;

    iget-object v1, p1, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oculus/horizon/libraryui/SubLibraryAdapter;->access$700(Lcom/oculus/horizon/libraryui/SubLibraryAdapter;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    const/4 v0, 0x1

    goto :goto_0

    .line 281
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 272
    check-cast p1, Lcom/oculus/library/model/App;

    check-cast p2, Lcom/oculus/library/model/App;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/libraryui/SubLibraryAdapter$6;->compare(Lcom/oculus/library/model/App;Lcom/oculus/library/model/App;)I

    move-result v0

    return v0
.end method
