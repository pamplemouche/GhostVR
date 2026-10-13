.class public Lcom/oculus/horizon/api/common/Section$SortOption;
.super Ljava/lang/Object;
.source "Section.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/api/common/Section;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortOption"
.end annotation


# instance fields
.field public __typename:Ljava/lang/String;

.field public display_name:Ljava/lang/String;

.field public is_default:Z

.field public is_default_descending:Z

.field public option_name:Ljava/lang/String;

.field public reversed_sort_order:Ljava/lang/String;

.field public sort_order:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
