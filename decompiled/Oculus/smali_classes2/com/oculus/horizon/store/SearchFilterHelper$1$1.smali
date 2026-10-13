.class Lcom/oculus/horizon/store/SearchFilterHelper$1$1;
.super Ljava/lang/Object;
.source "SearchFilterHelper.java"

# interfaces
.implements Lcom/oculus/util/collection/CollectionUtil$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/SearchFilterHelper$1;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oculus/util/collection/CollectionUtil$Filter",
        "<",
        "Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/horizon/store/SearchFilterHelper$1;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/SearchFilterHelper$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/oculus/horizon/store/SearchFilterHelper$1$1;->this$1:Lcom/oculus/horizon/store/SearchFilterHelper$1;

    iput-object p2, p0, Lcom/oculus/horizon/store/SearchFilterHelper$1$1;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public function(Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;)Z
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/oculus/horizon/store/SearchFilterHelper$1$1;->val$title:Ljava/lang/String;

    iget-object v1, p1, Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;->display_name:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic function(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 88
    check-cast p1, Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/store/SearchFilterHelper$1$1;->function(Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;)Z

    move-result v0

    return v0
.end method
