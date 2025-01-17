//
//  RNTPTDocumentViewManager.m
//  RNPdftron
//
//  Copyright © 2018 PDFTron. All rights reserved.
//

#import "RNTPTDocumentViewManager.h"

@implementation RNTPTDocumentViewManager

RCT_EXPORT_MODULE(RNTPTDocumentView)

+ (BOOL)requiresMainQueueSetup
{
    return YES;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _documentViews = [NSMutableDictionary dictionary];
    }
    return self;
}

RCT_EXPORT_VIEW_PROPERTY(onChange, RCTBubblingEventBlock)

RCT_CUSTOM_VIEW_PROPERTY(document, NSString, RNTPTDocumentView)
{
    if (json && [RCTConvert NSString:json]) {
        view.document = [RCTConvert NSString:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(isBase64String, BOOL, RNTPTDocumentView)
{
    if (json) {
        view.base64String = [RCTConvert BOOL:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(base64FileExtension, NSString, RNTPTDocumentView)
{
    if (json) {
        view.base64Extension = [RCTConvert NSString:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(password, NSString, RNTPTDocumentView)
{
    if (json) {
        view.password = [RCTConvert NSString:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(initialPageNumber, int, RNTPTDocumentView)
{
    if (json) {
        view.initialPageNumber = [RCTConvert int:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(pageNumber, int, RNTPTDocumentView)
{
    if (json) {
        view.pageNumber = [RCTConvert int:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(showLeadingNavButton, BOOL, RNTPTDocumentView)
{
    if (json) {
        view.showNavButton = [RCTConvert BOOL:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(leadingNavButtonIcon, NSString, RNTPTDocumentView)
{
    if (json && [RCTConvert NSString:json]) {
        view.navButtonPath = [RCTConvert NSString:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(disabledElements, NSArray, RNTPTDocumentView)
{
    if (json) {
        NSArray *disabledElements = [RCTConvert NSArray:json];
        view.disabledElements = disabledElements;
    }
    
}

RCT_CUSTOM_VIEW_PROPERTY(disabledTools, NSArray, RNTPTDocumentView)
{
    if (json) {
        NSArray *disabledTools = [RCTConvert NSArray:json];
        view.disabledTools = disabledTools;
    }
}

// viewer options
//RCT_CUSTOM_VIEW_PROPERTY(nightModeEnabled, BOOL, RNTPTDocumentView)
//{
//    if (json) {
//        view.nightModeEnabled = [RCTConvert BOOL:json];
//    }
//}

RCT_CUSTOM_VIEW_PROPERTY(topToolbarEnabled, BOOL, RNTPTDocumentView)
{
    if (json) {
        view.topToolbarEnabled = [RCTConvert BOOL:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(bottomToolbarEnabled, BOOL, RNTPTDocumentView)
{
    if (json) {
        view.bottomToolbarEnabled = [RCTConvert BOOL:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(hideToolbarsOnTap, BOOL, RNTPTDocumentView)
{
    if (json) {
        view.hideToolbarsOnTap = [RCTConvert BOOL:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(documentSliderEnabled, BOOL, RNTPTDocumentView)
{
    if (json) {
        view.documentSliderEnabled = [RCTConvert BOOL:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(pageIndicatorEnabled, BOOL, RNTPTDocumentView)
{
    if (json) {
        view.pageIndicatorEnabled = [RCTConvert BOOL:json];
    }
}

//RCT_CUSTOM_VIEW_PROPERTY(pageIndicatorShowsOnPageChange, BOOL, RNTPTDocumentView)
//{
//    if (json) {
//        view.pageIndicatorShowsOnPageChange = [RCTConvert BOOL:json];
//    }
//}
//
//RCT_CUSTOM_VIEW_PROPERTY(pageIndicatorShowsWithControls, BOOL, RNTPTDocumentView)
//{
//    if (json) {
//        view.pageIndicatorShowsWithControls = [RCTConvert BOOL:json];
//    }
//}

RCT_CUSTOM_VIEW_PROPERTY(customHeaders, NSDictionary, RNTPTDocumentView)
{
    if (json) {
        view.customHeaders = [RCTConvert NSDictionary:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(readOnly, BOOL, RNTPTDocumentView)
{
    if (json) {
        view.readOnly = [RCTConvert BOOL:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(fitMode, NSString, RNTPTDocumentView)
{
    if (json) {
        view.fitMode = [RCTConvert NSString:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(layoutMode, NSString, RNTPTDocumentView)
{
    if (json) {
        view.layoutMode = [RCTConvert NSString:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(continuousAnnotationEditing, BOOL, RNTPTDocumentView)
{
    if (json) {
        view.continuousAnnotationEditing = [RCTConvert BOOL:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(annotationAuthor, NSString, RNTPTDocumentView)
{
    if (json) {
        view.annotationAuthor = [RCTConvert NSString:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(showSavedSignatures, BOOL, RNTPTDocumentView)
{
    if (json) {
        view.showSavedSignatures = [RCTConvert BOOL:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(signSignatureFieldsWithStamps, BOOL, RNTPTDocumentView)
{
    if (json) {
        view.signSignatureFieldsWithStamps = [RCTConvert BOOL:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(followSystemDarkMode, BOOL, RNTPTDocumentView)
{
    if (json) {
        view.followSystemDarkMode = [RCTConvert BOOL:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(useStylusAsPen, BOOL, RNTPTDocumentView)
{
    if (json) {
        view.useStylusAsPen = [RCTConvert BOOL:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(multiTabEnabled, BOOL, RNTPTDocumentView)
{
    if (json) {
        view.multiTabEnabled = [RCTConvert BOOL:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(tabTitle, NSString, RNTPTDocumentView)
{
    if (json) {
        view.tabTitle = [RCTConvert NSString:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(maxTabCount, int, RNTPTDocumentView)
{
    if (json) {
        view.maxTabCount = [RCTConvert int:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(collabEnabled, BOOL, RNTPTDocumentView)
{
    if (json) {
        view.collabEnabled = [RCTConvert BOOL:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(currentUser, NSString, RNTPTDocumentView)
{
    if (json) {
        view.currentUser = [RCTConvert NSString:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(currentUserName, NSString, RNTPTDocumentView)
{
    if (json) {
        view.currentUserName = [RCTConvert NSString:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(autoSaveEnabled, BOOL, RNTPTDocumentView)
{
    if (json) {
        view.autoSaveEnabled = [RCTConvert BOOL:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(annotationMenuItems, NSArray, RNTPTDocumentView)
{
    if (json) {
        view.annotationMenuItems = [RCTConvert NSArray:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(pageChangeOnTap, BOOL, RNTPTDocumentView)
{
    if (json) {
        view.pageChangeOnTap = [RCTConvert BOOL:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(thumbnailViewEditingEnabled, BOOL, RNTPTDocumentView)
{
    if (json) {
        view.thumbnailViewEditingEnabled = [RCTConvert BOOL:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(selectAnnotationAfterCreation, BOOL, RNTPTDocumentView)
{
    if (json) {
        view.selectAnnotationAfterCreation = [RCTConvert BOOL:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(overrideAnnotationMenuBehavior, NSArray, RNTPTDocumentView)
{
    if (json) {
        view.overrideAnnotationMenuBehavior = [RCTConvert NSArray:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(overrideBehavior, NSArray, RNTPTDocumentView)
{
    if (json) {
        view.overrideBehavior = [RCTConvert NSStringArray:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(hideAnnotationMenu, NSArray, RNTPTDocumentView)
{
    if (json) {
        view.hideAnnotMenuTools = [RCTConvert NSStringArray:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(longPressMenuItems, NSArray, RNTPTDocumentView)
{
    if (json) {
        view.longPressMenuItems = [RCTConvert NSArray:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(overrideLongPressMenuBehavior, NSArray, RNTPTDocumentView)
{
    if (json) {
        view.overrideLongPressMenuBehavior = [RCTConvert NSStringArray:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(longPressMenuEnabled, BOOL, RNTPTDocumentView)
{
    if (json) {
        view.longPressMenuEnabled = [RCTConvert BOOL:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(annotationPermissionCheckEnabled, BOOL, RNTPTDocumentView)
{
    if (json) {
        view.annotationPermissionCheckEnabled = [RCTConvert BOOL:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(annotationToolbars, NSArray, RNTPTDocumentView)
{
    if (json) {
        view.annotationToolbars = [RCTConvert NSArray:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(hideDefaultAnnotationToolbars, NSArray, RNTPTDocumentView)
{
    if (json) {
        view.hideDefaultAnnotationToolbars = [RCTConvert NSArray:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(topAppNavBarRightBar, NSArray, RNTPTDocumentView)
{
    if (json) {
        view.topAppNavBarRightBar = [RCTConvert NSArray:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(bottomToolbar, NSArray, RNTPTDocumentView)
{
    if (json) {
        view.bottomToolbar = [RCTConvert NSArray:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(hideAnnotationToolbarSwitcher, BOOL, RNTPTDocumentView)
{
    if (json) {
        view.hideAnnotationToolbarSwitcher = [RCTConvert BOOL:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(hideTopToolbars, BOOL, RNTPTDocumentView)
{
    if (json) {
        view.hideTopToolbars = [RCTConvert BOOL:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(hideTopAppNavBar, BOOL, RNTPTDocumentView)
{
    if (json) {
        view.hideTopAppNavBar = [RCTConvert BOOL:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(hideThumbnailFilterModes, NSArray, RNTPTDocumentView)
{
    if (json) {
        view.hideThumbnailFilterModes = [RCTConvert NSArray:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(zoom, double, RNTPTDocumentView)
{
    if (json) {
        view.zoom = [RCTConvert double:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(horizontalScrollPos, double, RNTPTDocumentView)
{
    if (json) {
        view.horizontalScrollPos = [RCTConvert double:json];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(verticalScrollPos, double, RNTPTDocumentView)
{
    if (json) {
        view.verticalScrollPos = [RCTConvert double:json];
    }
}

- (UIView *)view
{
    RNTPTDocumentView *documentView = [[RNTPTDocumentView alloc] init];
    documentView.delegate = self;
    return documentView;
}

#pragma mark - Events

- (void)navButtonClicked: (RNTPTDocumentView *) sender
{
    if (sender.onChange) {
        sender.onChange(@{
            @"onLeadingNavButtonPressed": @YES,
        });
    }
}

- (void)documentLoaded:(RNTPTDocumentView *)sender
{
    if (sender.onChange) {
        sender.onChange(@{
            @"onDocumentLoaded": (sender.document ?: @""),
        });
    }
}

- (void)documentError:(RNTPTDocumentView *)sender error:(NSString *)error
{
    if (sender.onChange) {
        sender.onChange(@{
            @"onDocumentError": (error ?: @""),
        });
    }
}

- (void)pageChanged:(RNTPTDocumentView *)sender previousPageNumber:(int)previousPageNumber
{
    if (sender.onChange) {
        sender.onChange(@{
            @"onPageChanged": @"onPageChanged",
            @"previousPageNumber": @(previousPageNumber),
            @"pageNumber": @(sender.pageNumber),
        });
    }
}

- (void)scrollChanged:(RNTPTDocumentView *)sender horizontal:(double)horizontal vertical:(double)vertical
{
    if (sender.onChange) {
        sender.onChange(@{
            @"onScrollChanged": @"onScrollChanged",
            @"horizontal": @(horizontal),
            @"vertical": @(vertical),
        });
    }
}

- (void)zoomChanged:(RNTPTDocumentView *)sender zoom:(double)zoom
{
    if (sender.onChange) {
        sender.onChange(@{
            @"onZoomChanged" : @"onZoomChanged",
            @"zoom": @(zoom),
        });
    }
}

- (void)zoomFinished:(RNTPTDocumentView *)sender zoom:(double)zoom
{
    if (sender.onChange) {
        sender.onChange(@{
            @"onZoomFinished": @"onZoomFinished",
            @"zoom": @(zoom),
        });
    }
}

- (void)layoutChanged:(RNTPTDocumentView *)sender
{
    if (sender.onChange) {
        sender.onChange(@{
            @"onLayoutChanged" : @"onLayoutChanged",
        });
    }
}

- (void)annotationsSelected:(RNTPTDocumentView *)sender annotations:(NSArray<NSDictionary<NSString *,id> *> *)annotations
{
    if (sender.onChange) {
        sender.onChange(@{
            @"onAnnotationsSelected": @"onAnnotationsSelected",
            @"annotations": annotations,
        });
    }
}

- (void)annotationChanged:(RNTPTDocumentView *)sender annotation:(NSDictionary *)annotation action:(NSString *)action
{
    if (sender.onChange) {
        sender.onChange(@{
            @"onAnnotationChanged" : @"onAnnotationChanged",
            @"action": action,
            @"annotations": @[annotation],
        });
    }
}

- (void)formFieldValueChanged:(RNTPTDocumentView *)sender fields:(NSDictionary *)fields
{
    if (sender.onChange) {
        sender.onChange(@{
            @"onFormFieldValueChanged" : @"onFormFieldValueChanged",
            @"fields": @[fields],
        });
    }
}

- (void)exportAnnotationCommand:(RNTPTDocumentView *)sender action:(NSString *)action xfdfCommand:(NSString *)xfdfCommand
{
    if (sender.onChange) {
        if (xfdfCommand) {
            sender.onChange(@{
                @"onExportAnnotationCommand": @"onExportAnnotationCommand",
                @"action": action,
                @"xfdfCommand": (xfdfCommand ?: @""),
            });
        } else {
            sender.onChange(@{
                @"onExportAnnotationCommand": @"onExportAnnotationCommand",
                @"error": @"XFDF command cannot be generated"
            });
        }
    }
}

- (void)annotationMenuPressed:(RNTPTDocumentView *)sender annotationMenu:(NSString *)annotationMenu annotations:(NSArray<NSDictionary<NSString *,id> *> *)annotations
{
    if (sender.onChange) {
        sender.onChange(@{
            @"onAnnotationMenuPress": @"onAnnotationMenuPress",
            @"annotationMenu": annotationMenu,
            @"annotations": annotations,
        });
    }
}

- (void)longPressMenuPressed:(RNTPTDocumentView *)sender longPressMenu:(NSString *)longPressMenu longPressText:(NSString *)longPressText
{
    if (sender.onChange) {
        sender.onChange(@{
            @"onLongPressMenuPress": @"onLongPressMenuPress",
            @"longPressMenu": longPressMenu,
            @"longPressText": longPressText,
        });
    }
}

- (void)bookmarkChanged:(RNTPTDocumentView *)sender bookmarkJson:(NSString *)bookmarkJson
{
    if (sender.onChange) {
        if (bookmarkJson) {
            sender.onChange(@{
                @"onBookmarkChanged": @"onBookmarkChanged",
                @"bookmarkJson": bookmarkJson,
            });
        } else {
            sender.onChange(@{
                @"onBookmarkChanged": @"onBookmarkChanged",
                @"error": @"Bookmark cannot be exported"
            });
        }
        
    }
}

- (void)toolChanged:(RNTPTDocumentView *)sender previousTool:(NSString *)previousTool tool:(NSString *)tool
{
    if (sender.onChange) {
        sender.onChange(@{
            @"onToolChanged": @"onToolChanged",
            @"previousTool": previousTool ?: @"unknown tool",
            @"tool": tool ?: @"unknown tool",
        });
    }
}

- (void)behaviorActivated:(RNTPTDocumentView *)sender action:(NSString *)action data:(NSDictionary *)data {
    if (sender.onChange) {
        sender.onChange(@{
            @"onBehaviorActivated": @"onBehaviorActivated",
            @"action": action,
            @"data": data,
        });
    }
}

- (void)textSearchStart:(RNTPTDocumentView *)sender
{
    if (sender.onChange) {
        sender.onChange(@{
            @"onTextSearchStart": @"onTextSearchStart",
        });
    }
}

- (void)textSearchResult:(RNTPTDocumentView *)sender found:(BOOL)found textSelection:(NSDictionary *)textSelection
{
    if (sender.onChange) {
        NSMutableDictionary *result = [[NSMutableDictionary alloc] initWithDictionary: @{
            @"onTextSearchResult": @"onTextSearchResult",
            @"found": [NSNumber numberWithBool:found]
        }];
        
        // set potential nil value through this way
        result[@"textSelection"] = textSelection;
        
        sender.onChange(result);
    }
}

#pragma mark - Methods

- (void)setToolModeForDocumentViewTag:(NSNumber *)tag toolMode:(NSString *)toolMode
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        [documentView setToolMode:toolMode];
    }
}

- (BOOL)commitToolForDocumentViewTag:(NSNumber *)tag
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        return [documentView commitTool];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
        return NO;
    }
}

- (NSString *)getDocumentPathForDocumentViewTag:(NSNumber *)tag
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        return [documentView getDocumentPath];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
        return nil;
    }
}

- (int)getPageCountForDocumentViewTag:(NSNumber *)tag
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        return [documentView getPageCount];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
        return 0;
    }
}

- (void)importBookmarkJsonForDocumentViewTag:(NSNumber *)tag bookmarkJson:(NSString *)bookmarkJson
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        [documentView importBookmarkJson:bookmarkJson];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
    
}

- (NSString *)exportAnnotationsForDocumentViewTag:(NSNumber *)tag options:(NSDictionary *)options
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        return [documentView exportAnnotationsWithOptions:options];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
        return nil;
    }
}

- (void)importAnnotationCommandForDocumentViewTag:(NSNumber *)tag xfdfCommand:(NSString *)xfdfCommand initialLoad:(BOOL)initialLoad
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        [documentView importAnnotationCommand:xfdfCommand initialLoad:initialLoad];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (void)importAnnotationsForDocumentViewTag:(NSNumber *)tag xfdf:(NSString *)xfdfString
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        [documentView importAnnotations:xfdfString];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (void)flattenAnnotationsForDocumentViewTag:(NSNumber *)tag formsOnly:(BOOL)formsOnly
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        [documentView flattenAnnotations:formsOnly];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (void)deleteAnnotationsForDocumentViewTag:(NSNumber *)tag annotations:(NSArray *)annotations
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        [documentView deleteAnnotations:annotations];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (void)saveDocumentForDocumentViewTag:(NSNumber *)tag completionHandler:(void (^)(NSString * _Nullable filePath))completionHandler
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        [documentView saveDocumentWithCompletionHandler:^(NSString * _Nullable filePath){
            if (completionHandler) {
                completionHandler(filePath);
            }
        }];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException
                                       reason:@"Unable to find DocumentView for tag"
                                     userInfo:nil];
    }
}

- (void)setFlagForFieldsForDocumentViewTag:(NSNumber *)tag forFields:(NSArray<NSString *> *)fields setFlag:(PTFieldFlag)flag toValue:(BOOL)value
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        [documentView setFlagForFields:fields setFlag:flag toValue:value];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (void)setValuesForFieldsForDocumentViewTag:(NSNumber *)tag map:(NSDictionary<NSString *, id> *)map
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        [documentView setValuesForFields:map];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (NSDictionary *)getFieldForDocumentViewTag:(NSNumber *)tag fieldName:(NSString *)fieldName
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        return [documentView getField:fieldName];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to get field for tag" userInfo:nil];
        return nil;
    }
}

- (void)setFlagsForAnnotationsForDocumentViewTag:(NSNumber *)tag annotationFlagList:(NSArray *)annotationFlagList
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        [documentView setFlagsForAnnotations:annotationFlagList];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (void)selectAnnotationForDocumentViewTag:(NSNumber *)tag annotationId:(NSString *)annotationId pageNumber:(NSInteger)pageNumber
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        [documentView selectAnnotation:annotationId pageNumber:pageNumber];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (void)setPropertiesForAnnotationForDocumentViewTag:(NSNumber *)tag annotationId:(NSString *)annotationId pageNumber:(NSInteger)pageNumber propertyMap:(NSDictionary *)propertyMap
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        [documentView setPropertiesForAnnotation:annotationId pageNumber:pageNumber propertyMap:propertyMap];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (void)setDrawAnnotationsForDocumentViewTag:(NSNumber *)tag drawAnnotations:(BOOL)drawAnnotations
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        [documentView setDrawAnnotations:drawAnnotations];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (void)setVisibilityForAnnotationForDocumentViewTag:(NSNumber *)tag annotationId:(NSString *)annotationId pageNumber:(NSInteger)pageNumber visibility:(BOOL)visibility
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        [documentView setVisibilityForAnnotation:annotationId pageNumber:pageNumber visibility:visibility];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (void)setHighlightFieldsForDocumentViewTag:(NSNumber *)tag highlightFields:(BOOL)highlightFields
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        [documentView setHighlightFields:highlightFields];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (NSDictionary *)getAnnotationAtForDocumentViewTag:(NSNumber *)tag x:(NSInteger)x y:(NSInteger)y distanceThreshold:(double)distanceThreshold minimumLineWeight:(double)minimumLineWeight
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        return [documentView getAnnotationAt:x y:y distanceThreshold:distanceThreshold minimumLineWeight:minimumLineWeight];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
        return nil;
    }
}

- (NSArray *)getAnnotationListAtForDocumentViewTag:(NSNumber *)tag x1:(NSInteger)x1 y1:(NSInteger)y1 x2:(NSInteger)x2 y2:(NSInteger)y2
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        return [documentView getAnnotationListAt:x1 y1:y1 x2:x2 y2:y2];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
        return nil;
    }
}

- (NSArray *)getAnnotationListOnPageForDocumentViewTag:(NSNumber *)tag pageNumber:(NSInteger)pageNumber
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        return [documentView getAnnotationListOnPage:pageNumber];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
        return nil;
    }
}


- (NSDictionary<NSString *, NSNumber *> *)getPageCropBoxForDocumentViewTag:(NSNumber *)tag pageNumber:(NSInteger)pageNumber
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        NSDictionary<NSString *, NSNumber *> *cropBox = [documentView getPageCropBox:pageNumber];
        return cropBox;
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (BOOL)setCurrentPageForDocumentViewTag:(NSNumber *)tag pageNumber:(NSInteger)pageNumber
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        bool setResult = [documentView setCurrentPage:pageNumber];
        return setResult;
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (BOOL)gotoPreviousPageForDocumentViewTag:(NSNumber *)tag
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        bool setResult = [documentView gotoPreviousPage];
        return setResult;
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (BOOL)gotoNextPageForDocumentViewTag:(NSNumber *)tag
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        bool setResult = [documentView gotoNextPage];
        return setResult;
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (BOOL)gotoFirstPageForDocumentViewTag:(NSNumber *)tag
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        bool setResult = [documentView gotoFirstPage];
        return setResult;
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (BOOL)gotoLastPageForDocumentViewTag:(NSNumber *)tag
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        bool setResult = [documentView gotoLastPage];
        return setResult;
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (void)closeAllTabsForDocumentViewTag:(NSNumber *)tag
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        [documentView closeAllTabs];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (double)getZoomForDocumentViewTag:(NSNumber *)tag
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        double zoom = [documentView getZoom];
        return zoom;
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (int)getPageRotationForDocumentViewTag:(NSNumber *)tag
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        int rotation = [documentView getPageRotation];
        return rotation;
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (void)rotateClockwiseForDocumentViewTag:(NSNumber *)tag
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        [documentView rotateClockwise];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (void)rotateCounterClockwiseForDocumentViewTag:(NSNumber *)tag
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        [documentView rotateCounterClockwise];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (void)setZoomLimitsForDocumentViewTag:(nonnull NSNumber *)tag zoomLimitMode:(NSString *)zoomLimitMode minimum:(double)minimum maximum:(double)maximum
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        [documentView setZoomLimits:zoomLimitMode minimum:minimum maximum:maximum];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (void)zoomWithCenterForDocumentViewTag:(nonnull NSNumber *)tag zoom:(double)zoom x:(int)x y:(int)y
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        [documentView zoomWithCenter:zoom x:x y:y];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (void)zoomToRectForDocumentViewTag:(nonnull NSNumber *)tag pageNumber:(int)pageNumber rect:(NSDictionary *)rect
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        [documentView zoomToRect:pageNumber rect:rect];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (void)smartZoomForDocumentViewTag:(nonnull NSNumber *)tag x:(int)x y:(int)y animated:(BOOL)animated
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        [documentView smartZoom:x y:y animated:animated];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (NSDictionary<NSString *, NSNumber *> *)getScrollPosForDocumentViewTag:(NSNumber *)tag
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        NSDictionary<NSString *, NSNumber *> *scrollPos = [documentView getScrollPos];
        return scrollPos;
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (NSDictionary<NSString *, NSNumber *> *)getCanvasSizeForDocumentViewTag:(NSNumber *)tag
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        NSDictionary<NSString *, NSNumber *> *canvasSize = [documentView getCanvasSize];
        return canvasSize;
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}
        
#pragma mark - Coordination

- (NSArray *)convertScreenPointsToPagePointsForDocumentViewTag:(nonnull NSNumber *)tag points:(NSArray *)points
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        NSArray *convertedPoints = [documentView convertScreenPointsToPagePoints:points];
        return convertedPoints;
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (NSArray *)convertPagePointsToScreenPointsForDocumentViewTag:(nonnull NSNumber *)tag points:(NSArray *)points
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        NSArray *convertedPoints = [documentView convertPagePointsToScreenPoints:points];
        return convertedPoints;
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (int)getPageNumberFromScreenPointForDocumentViewTag:(nonnull NSNumber *)tag x:(double)x y:(double)y {
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        int pageNumber = [documentView getPageNumberFromScreenPoint:x y:y];
        return pageNumber;
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (void)setProgressiveRenderingForDocumentViewTag:(NSNumber *)tag progressiveRendering:(BOOL)progressiveRendering initialDelay:(NSInteger)initialDelay interval:(NSInteger)interval
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        [documentView setProgressiveRendering:progressiveRendering initialDelay:initialDelay interval:interval];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (void)setImageSmoothingforDocumentViewTag:(NSNumber *)tag imageSmoothing:(BOOL)imageSmoothing
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        [documentView setImageSmoothing:imageSmoothing];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (void)setOverprintforDocumentViewTag:(NSNumber *)tag overprint:(NSString *)overprint
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        [documentView setOverprint:overprint];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (void)findTextForDocumentViewTag:(NSNumber *)tag searchString:(NSString *)searchString matchCase:(BOOL)matchCase matchWholeWord:(BOOL)matchWholeWord searchUp:(BOOL)searchUp regExp:(BOOL)regExp
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        [documentView findText:searchString matchCase:matchCase matchWholeWord:matchWholeWord searchUp:searchUp regExp:regExp];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (void)cancelFindTextForDocumentViewTag:(NSNumber *)tag
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        [documentView cancelFindText];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (NSDictionary *)getSelectionForDocumentViewTag:(NSNumber *)tag pageNumber:(NSInteger)pageNumber
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        NSDictionary *selection = [documentView getSelection:pageNumber];
        return selection;
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (BOOL)hasSelectionForDocumentViewTag:(NSNumber *)tag
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        bool hasSelection = [documentView hasSelection];
        return hasSelection;
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (void)clearSelectionForDocumentViewTag:(NSNumber *)tag
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        [documentView clearSelection];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (NSDictionary *)getSelectionPageRangeForDocumentViewTag:(NSNumber *)tag
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        NSDictionary *pageRange = [documentView getSelectionPageRange];
        return pageRange;
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (BOOL)hasSelectionOnPageForDocumentViewTag:(NSNumber *)tag pageNumber:(NSInteger)pageNumber
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        bool hasSelection = [documentView hasSelectionOnPage:pageNumber];
        return hasSelection;
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (BOOL)selectInRectForDocumentViewTag:(NSNumber *)tag rect:(NSDictionary *)rect
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        BOOL selected = [documentView selectInRect:rect];
        return selected;
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (BOOL)isThereTextInRectForDocumentViewTag:(NSNumber *)tag rect:(NSDictionary *)rect
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        BOOL hasText = [documentView isThereTextInRect:rect];
        return hasText;
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

- (void)selectAllForDocumentViewTag:(NSNumber *)tag
{
    RNTPTDocumentView *documentView = self.documentViews[tag];
    if (documentView) {
        [documentView selectAll];
    } else {
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:@"Unable to find DocumentView for tag" userInfo:nil];
    }
}

#pragma mark - DocumentView attached/detached

- (void)documentViewAttachedToWindow:(RNTPTDocumentView *)documentView
{
    self.documentViews[documentView.reactTag] = documentView;
}

- (void)documentViewDetachedFromWindow:(RNTPTDocumentView *)documentView
{
    [self.documentViews removeObjectForKey:documentView.reactTag];
}

@end
