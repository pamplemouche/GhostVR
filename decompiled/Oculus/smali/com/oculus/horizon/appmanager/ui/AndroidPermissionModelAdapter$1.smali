.class Lcom/oculus/horizon/appmanager/ui/AndroidPermissionModelAdapter$1;
.super Ljava/lang/Object;
.source "AndroidPermissionModelAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/appmanager/ui/AndroidPermissionModelAdapter;->categorizePermissionGrouping(Ljava/util/List;)Ljava/util/List;
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
        "Lcom/oculus/horizon/appmanager/ui/AndroidPermissionModelAdapter$PermissionGroupData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/appmanager/ui/AndroidPermissionModelAdapter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/appmanager/ui/AndroidPermissionModelAdapter;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/oculus/horizon/appmanager/ui/AndroidPermissionModelAdapter$1;->this$0:Lcom/oculus/horizon/appmanager/ui/AndroidPermissionModelAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oculus/horizon/appmanager/ui/AndroidPermissionModelAdapter$PermissionGroupData;Lcom/oculus/horizon/appmanager/ui/AndroidPermissionModelAdapter$PermissionGroupData;)I
    .locals 3

    .prologue
    .line 99
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/oculus/horizon/appmanager/ui/AndroidPermissionModelAdapter$PermissionGroupData;->groupInfo:Landroid/content/pm/PermissionGroupInfo;

    if-nez v0, :cond_1

    .line 100
    :cond_0
    const/4 v0, -0x1

    .line 105
    :goto_0
    return v0

    .line 102
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p2, Lcom/oculus/horizon/appmanager/ui/AndroidPermissionModelAdapter$PermissionGroupData;->groupInfo:Landroid/content/pm/PermissionGroupInfo;

    if-nez v0, :cond_3

    .line 103
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 105
    :cond_3
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->start()Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-object v1, p1, Lcom/oculus/horizon/appmanager/ui/AndroidPermissionModelAdapter$PermissionGroupData;->groupInfo:Landroid/content/pm/PermissionGroupInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    iget-object v2, p2, Lcom/oculus/horizon/appmanager/ui/AndroidPermissionModelAdapter$PermissionGroupData;->groupInfo:Landroid/content/pm/PermissionGroupInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 96
    check-cast p1, Lcom/oculus/horizon/appmanager/ui/AndroidPermissionModelAdapter$PermissionGroupData;

    check-cast p2, Lcom/oculus/horizon/appmanager/ui/AndroidPermissionModelAdapter$PermissionGroupData;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/appmanager/ui/AndroidPermissionModelAdapter$1;->compare(Lcom/oculus/horizon/appmanager/ui/AndroidPermissionModelAdapter$PermissionGroupData;Lcom/oculus/horizon/appmanager/ui/AndroidPermissionModelAdapter$PermissionGroupData;)I

    move-result v0

    return v0
.end method
