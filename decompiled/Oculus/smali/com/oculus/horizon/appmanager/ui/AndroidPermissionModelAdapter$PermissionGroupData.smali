.class Lcom/oculus/horizon/appmanager/ui/AndroidPermissionModelAdapter$PermissionGroupData;
.super Ljava/lang/Object;
.source "AndroidPermissionModelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/appmanager/ui/AndroidPermissionModelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermissionGroupData"
.end annotation


# instance fields
.field final groupInfo:Landroid/content/pm/PermissionGroupInfo;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/pm/PermissionGroupInfo;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/appmanager/ui/AndroidPermissionModelAdapter$PermissionGroupData;->permissions:Ljava/util/List;

    .line 43
    iput-object p1, p0, Lcom/oculus/horizon/appmanager/ui/AndroidPermissionModelAdapter$PermissionGroupData;->groupInfo:Landroid/content/pm/PermissionGroupInfo;

    .line 44
    return-void
.end method
