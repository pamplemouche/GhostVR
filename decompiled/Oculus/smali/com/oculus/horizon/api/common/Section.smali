.class public Lcom/oculus/horizon/api/common/Section;
.super Ljava/lang/Object;
.source "Section.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/common/Section$Assets;,
        Lcom/oculus/horizon/api/common/Section$SortOption;
    }
.end annotation


# instance fields
.field public assets:Lcom/oculus/horizon/api/common/Section$Assets;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public content_type:Ljava/lang/String;

.field public end_time:J

.field public id:Ljava/lang/String;

.field public layout:Ljava/lang/String;

.field public section_name:Ljava/lang/String;

.field public show_timer:Z

.field public sort_options:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/horizon/api/common/Section$SortOption;",
            ">;"
        }
    .end annotation
.end field

.field public style_theme:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
